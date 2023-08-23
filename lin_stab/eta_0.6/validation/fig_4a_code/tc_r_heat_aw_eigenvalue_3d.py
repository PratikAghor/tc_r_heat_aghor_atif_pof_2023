"""
Usage:
  tc_r_heat_aw_eigenvalue_3d.py [--Ta=<taylor> --Gr=<grashof> --Fr=<froude> \
  --Pr=<prandtl> --eta=<eta> --m=<m> --k=<k> --nr=<nr> --mu=<mu> \
  --ar=<Gamma> --heated=<heated>]

Options:
  --nr=<nr>                 number of Radial modes [default: 32]
  --Ta=<taylor>             Taylor number based on inner cylinder rotation (Re1) [default: 100]
  --Gr=<grashof>            Grashof number [default: 1000]
  --Fr=<froude>             Froude number [default: 0]
  --Pr=<prandtl>            Prandtl number [default: 1]
  --eta=<eta>               eta - ratio of R1/R2 [default: 0.6]
  --m=<m>                   m mode to begin initial conditions [default: 0]
  --k=<k>                   kz mode [default: 1]
  --mu=<mu>                 mu = Omega2/Omega1 [default: 0]
  --ar=<Gamma>              Aspect ratio (height/width) [default: 3]
  --heated=<heated>         case isothermal (0) or heated (1) [default: 1]
"""

import numpy as np
from numpy import sqrt
from dedalus import public as de
import logging
from docopt import docopt
from eigentools import Eigenproblem
logger = logging.getLogger(__name__)

nr = 32

args=docopt(__doc__)
nr = int(args['--nr'])
Ta = float(args['--Ta'])
Gr = float(args['--Gr'])
Fr = float(args['--Fr'])
Pr = float(args['--Pr'])
# S = float(args['--S'])

eta = float(args['--eta'])
mu = float(args['--mu'])
Gamma = float(args['--ar'])

m = int(args['--m'])
k = float(args['--k'])
heated = bool(args['--heated'])

"""
delta = R2 - R1
mu = Omega2/Omega1
eta = R1/R2

scale [L] = delta
scale [T] = delta/(R1 Omega1)
scale [V] = R1 Omega1

Default parameters from Barenghi (1991, J. Comp. Phys.).
"""
# derived parameters
alpha = 2*np.pi/Gamma

Re1 = np.sqrt((Ta/2)*(1+eta)/(1-eta))
Re2 = mu*Re1

R1 = eta/(1. - eta)
R2 = 1./(1-eta)

# Omega1 = 1/R1
# Omega2 = mu*Omega1
# nu = R1 * Omega1/Re1

midpoint = R1 + (R2-R1) / 2
if alpha:
    Lz = 2*np.pi/alpha
else:
    Lz = Gamma

A = (1/eta - 1.)*(mu-eta**2)/(1-eta**2)
B = eta*(1-mu)/((1-eta)*(1-eta**2))

logger.info("Computing Stability for Gr={:.3e}, Pr={:.3e}, eta={:.3e}, mu = {:.3e}, m={:d}, nr = {:d}".format(Gr, Pr, eta, mu, m, nr))

# logger.info("Lz set to {:.6e}".format(Lz))

variables = ['u', 'ur', 'v', 'vr', 'w', 'wr', 'p', 'T', 'Tr']

#domain
r_basis = de.Chebyshev('r', nr, interval=[R1, R2])

bases = [r_basis]
domain = de.Domain(bases)

#problem
problem = de.EVP(domain, eigenvalue='sigma', variables=variables)

# params into equations
problem.parameters['eta']=eta
problem.parameters['mu']=mu
problem.parameters['R1']=R1
problem.parameters['R2']=R2
problem.parameters['Ta']=Ta
problem.parameters['Gr']=Gr
problem.parameters['Fr']=Fr
problem.parameters['Pr']=Pr
# problem.parameters['S']=S

problem.parameters['pi']=np.pi
problem.parameters['kz'] =  k
problem.parameters['m'] = m

# substitutions

"""
this implements the cylindrical del operators.
assumes premultiplication by r**2
Lap_s --> scalar laplacian
Lap_r --> r component of vector laplacian
Lap_phi --> phi component of vector laplacian
Lap_z --> z component of vector laplacian

"""
problem.substitutions['Re1']='sqrt( Ta*(1+eta)/(2*(1-eta)) )'

problem.substitutions['A'] = '(mu-eta**2)/(eta*(1+eta))'
problem.substitutions['B'] = 'eta*(1-mu)/((1-eta)*(1-eta**2))'
problem.substitutions['C'] = '((1-eta**2)*(1-3*eta**2)-4*(eta**4)*log(eta))' # Ali-Weidman's A
problem.substitutions['D'] = '16*((1 - eta**2)**2 + (1-eta**4)*log(eta))' # Ali-Weidman's B

problem.substitutions['v0'] = 'A*r + B/r'

if (heated == 0): 
    # isothermal
    problem.substitutions['T0'] = '0' # (1/ln(eta))*ln(r/r_o)
    problem.substitutions['dT0dr'] = '0'  # dT0/dr
    problem.substitutions['w0'] = '0' # (1/ln(eta))*ln(r/r_o)
    problem.substitutions['dw0dr'] = '0'  # dT0/dr
    problem.substitutions['Gr'] = 'Re1' # Gr = Re1 for isothermal
    problem.substitutions['S'] = '1'

elif (heated == 1): 
    # heated
    problem.substitutions['T0'] = 'log((1-eta)*r)/log(eta)' # (1/ln(eta))*ln(r/r_o)
    problem.substitutions['dT0dr'] = '1/(r*log(eta))'  # dT0/dr
    problem.substitutions['w0'] = '(1/(1-eta)**2)*( (C/D)*((1-eta)**2 * (r**2) - 1 + (1-eta**2)*T0)  \
        - (1/4)*((1-eta)**2 * r**2 - eta**2)*T0 )'
    problem.substitutions['dw0dr'] = '(1/(1-eta)**2)*((C/D)*((1-eta)**2 * (2*r) + (1-eta**2)*dT0dr ) ) \
        - (r/2)*T0 - (1/(4*(1-eta)**2))*((1-eta)**2 * r**2 - eta**2)*dT0dr'  # dw0/dr
    problem.substitutions['S'] = 'Re1/Gr'

else:
    print('please specify the right case.')

problem.substitutions['dv0dr'] = 'A - B/(r*r)'  # d/dr of background forcing

# p0 given in Ali-Weidman, but not needed for linear stability

problem.substitutions['dphi( f)'] = '1j*m*f'
problem.substitutions['dz(f)'] = '1j*kz*f'
problem.substitutions['dt(f)'] = 'sigma*f'

# assume pre-multiplication by r*r
problem.substitutions['Lap_s(f, f_r)'] = "r*r*dr(f_r) + r*f_r + dphi(dphi(f)) + r*r*dz(dz(f))"
problem.substitutions['Lap_r'] = "Lap_s(u, ur) - u - 2*S*dphi(v)"
problem.substitutions['Lap_phi'] = "S*Lap_s(v, vr) - S*v + 2*dphi(u)"
problem.substitutions['Lap_z'] = "Lap_s(w, wr)"

# momentum equations
problem.add_equation("r*r*dt(u) - Lap_r + Gr*(r*S*v0*dphi(u) - r*(S**2)*2*v0*v + r*r*w0*dz(u)) + r*r*Gr*dr(p) = 0")
#
problem.add_equation("S*r*r*dt(v) - Lap_phi + S*Gr*(r*r*dv0dr*u + r*S*v0*dphi(v) + r*r*w0*dz(v) + r*v0*u ) + Gr*r*dphi(p)  = 0")
#
problem.add_equation("r*r*dt(w) - Lap_z + Gr*(r*r*u*dw0dr + r*S*v0*dphi(w) + r*r*w0*dz(w)) - r*r*T + Gr*r*r*dz(p) = 0")
#
problem.add_equation("r*r*dt(T) - (1/Pr)*Lap_s(T, Tr) + Gr*(r*r*u*dT0dr + r*S*v0*dphi(T) + r*r*w0*dz(T)) = 0")

# continuity
problem.add_equation("r*ur + u + S*dphi(v) + r*dz(w) = 0")
##

# auxillilary equations
problem.add_equation("ur - dr(u) = 0")
problem.add_equation("vr - dr(v) = 0")
problem.add_equation("wr - dr(w) = 0")
problem.add_equation("Tr - dr(T) = 0")

# boundary Conditions
problem.add_bc("left(u) = 0")
problem.add_bc("right(u) = 0")
problem.add_bc("left(v) = 0")
problem.add_bc("right(v) = 0")
problem.add_bc("left(w) = 0")
problem.add_bc("right(w) = 0")
problem.add_bc("left(T) = 0")
problem.add_bc("right(T) = 0")

ep = Eigenproblem(problem)

growth, index, freq = ep.growth_rate({})

logger.info("Growth rate = {:16.15e}; frequency = {:16.15e}".format(growth, freq))

#ep.spectrum(spectype='hires')
"""
plot eigenmode:
Because the eigenvalue problems solved by Dedalus are one-dimensional,
eigentools provides a simple method to visualize all of the modes. In general,
these solutions are complex, with the real and imaginary parts of each variable
determining their phase relationships. Because eigenmodes are only defined to a
relative phase, EP.plot_mode allows the user to specify a variable to normalize
against. All variables are multiplied by the complex conjugate of the chosen
mode. Here, we have chosen the vertical velocity w.
Note that its plot shows no imaginary part.
"""
fig = ep.plot_mode(index, norm_var='v')
fig.savefig('tc_aw_unstable_1D.png')

#---------------------------------------------
# use project_mode to project onto the 3d domain. 
nz=32
nphi=16
dealias=3/2
Lz = 2.0*np.pi/k

z_basis = de.Fourier('z', nz, interval=[0., Lz], dealias=dealias)
phi_basis = de.Fourier('phi', nphi, interval=[0., 2.0*np.pi], dealias=dealias)

bases = [z_basis, phi_basis, r_basis]
domain = de.Domain(bases, grid_dtype=np.float64)

# since we've chosen Lz = 2pi/k, kz-mode is always set to 1.  
transverse_modes = np.array([1, m], int)

fieldsys = ep.project_mode(index, domain, transverse_modes, all_modes=False)
ep.write_global_domain(fieldsys, base_name="crit_ef_Gr_{:.3e}_Pr_{:.3e}_eta_{:.3e}_mu_{:.3e}_m_{:d}_".format(Gr, Pr, eta, mu, m))

#---------------------------------------------