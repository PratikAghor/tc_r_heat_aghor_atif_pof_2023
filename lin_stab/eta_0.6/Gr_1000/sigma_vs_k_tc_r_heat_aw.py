"""
Usage:
  tc_r_heat_aw_eigenvalue_3d.py [--Gr=<grashof> --Fr=<froude> \
  --Pr=<prandtl> --eta=<eta> --m=<m> --Ta_range=<Ta_range> --kz_range=<kz_range> --nTa=<nTa> --nkz=<nkz> --nr=<nr> --mu=<mu> \
  --ar=<Gamma> --heated=<heated>]

Options:
  --nr=<nr>                 number of Radial modes [default: 32]
  --Gr=<grashof>            Grashof number [default: 1000]
  --Fr=<froude>             Froude number [default: 0]
  --Pr=<prandtl>            Prandtl number [default: 1]
  --eta=<eta>               eta - ratio of R1/R2 [default: 0.6]
  --m=<m>                   m mode to begin initial conditions [default: 0]
  --Ta_range=<Ta_range>     range of Ta [default: None]
  --kz_range=<kz_range>     range of kz [default: None]
  --nTa=<nTa>               search-grid size of Ta-axis for crit finder [default: 20]
  --nkz=<nkz>               search-grid size of kz-axis for crit finder [default: 20]
  --mu=<mu>                 mu = Omega2/Omega1 [default: 0]
  --ar=<Gamma>              Aspect ratio (height/width) [default: 3]
  --heated=<heated>         case isothermal (0) or heated (1) [default: 1]
"""

import numpy as np
from numpy import sqrt
from dedalus import public as de
import logging
import h5py

from docopt import docopt
from eigentools import Eigenproblem
logger = logging.getLogger(__name__)

nr = 32

args=docopt(__doc__)
nr = int(args['--nr'])
Gr = float(args['--Gr'])
Fr = float(args['--Fr'])
Pr = float(args['--Pr'])
# S = float(args['--S'])

eta = float(args['--eta'])
mu = float(args['--mu'])
Gamma = float(args['--ar'])

m = int(args['--m'])
# k = int(args['--k'])
heated = bool(args['--heated'])

if args['--Ta_range'] == 'None':
    Ta_range = (2400, 7200)
else:
    Ta_range = [float(i) for i in args['--Ta_range'].split(',')]
if args['--kz_range'] == 'None':
    kz_range = (0.1, 8)
else:
    kz_range = [float(i) for i in args['--kz_range'].split(',')]


"""
delta = R2 - R1
mu = Omega2/Omega1
eta = R1/R2
"""
# derived parameters
alpha = 2*np.pi/Gamma
nTa = int(args['--nTa'])
nkz = int(args['--nkz'])

# Re1 = np.sqrt((Ta/2)*(1+eta)/(1-eta))
# Re2 = mu*Re1

R1 = eta/(1. - eta)
R2 = 1./(1-eta)


A = (1/eta - 1.)*(mu-eta**2)/(1-eta**2)
B = eta*(1-mu)/((1-eta)*(1-eta**2))

logger.info("Computing Stability for Gr={:.3e}, Pr={:.3e}, eta={:.3e}, mu={:.3e}, m = {:d}, nr = {:d}".format(Gr, Pr, eta, mu, m, nr))

variables = ['u', 'ur', 'v', 'vr', 'w', 'wr', 'p', 'T', 'Tr']

# domain
r_basis = de.Chebyshev('r', nr, interval=[R1, R2])

bases = [r_basis]
domain = de.Domain(bases)


# find growth rate, frequency for each (kz, Ta) and store it

kpoints = np.linspace(kz_range[0], kz_range[1], nkz)
Tapoints = np.linspace(Ta_range[0], Ta_range[1], nTa)
sigma_vs_k = np.zeros((nTa, nkz, 3)) # array to store growth rate and freq for each kz


root_name = "sigma_vs_k_aw_Gr_{:.3e}_Pr_{:.3e}_eta_{:.3e}_mu_{:.3e}_m_{:d}".format(Gr, Pr, eta, mu, m)
# save (kz, sigma_r, sigma_i) for each Ta


for i in range(0, nTa):
    # define a new problem
    for j in range(0, nkz):
        Ta = Tapoints[i]
        kz = kpoints[j]

        # problem
        problem = de.EVP(domain, eigenvalue='sigma', variables=variables)

        # params into equations
        problem.parameters['eta']=eta
        problem.parameters['mu']=mu
        problem.parameters['R1']=R1
        problem.parameters['R2']=R2
        problem.parameters['Gr']=Gr
        problem.parameters['Fr']=Fr
        problem.parameters['Pr']=Pr
        # problem.parameters['S']=S

        problem.parameters['pi']=np.pi
        problem.parameters['m'] = m

        
        problem.parameters['Ta'] = Ta
        sigma_vs_k[i, :, 0] = kpoints

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

        problem.parameters['kz'] = kz
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
        sigma_vs_k[i, j, 1] = growth
        sigma_vs_k[i, j, 2] = freq

        logger.info("Ta = {:3e}; kz = {:3e}; Growth rate = {:16.15e}; frequency = {:16.15e}".format(Ta, kz, growth, freq))

# write sigma_vs_k

hf = h5py.File('./results/'+root_name+'.h5', 'w')
hf.create_dataset('Ta', data=Tapoints)
hf.create_dataset('sigma_vs_k', data=sigma_vs_k)


