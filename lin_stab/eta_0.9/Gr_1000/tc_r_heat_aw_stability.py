"""
Usage:
  tc_r_heat_aw_stability.py [--Ta=<taylor> --Gr=<grashof> --Fr=<froude> \
  --Pr=<prandtl> --eta=<eta> --m=<m> --nr=<nr> --mu=<mu> \
  --ar=<Gamma> --Ta_range=<Ta_range> --kz_range=<kz_range> --nTa=<nTa> --nkz=<nkz> --heated=<heated>]

Options:
  --nr=<nr>                 number of Radial modes [default: 32]
  --Ta=<taylor>             Taylor number based on inner cylinder rotation (Re1) [default: 100]
  --Gr=<grashof>            Grashof number [default: 100]
  --Fr=<froude>             Froude number [default: 0]
  --Pr=<prandtl>            Prandtl number [default: 1]
  --eta=<eta>               eta - ratio of R1/R2 [default: 0.6]
  --m=<m>                   m mode to begin initial conditions [default: 0]
  --mu=<mu>                 mu = Omega2/Omega1 [default: 0]
  --ar=<Gamma>              Aspect ratio (height/width) [default: 3]
  --Ta_range=<Ta_range>     range of Ta for crit finder [default: None]
  --kz_range=<kz_range>     range of kz for crit finder [default: None]
  --nTa=<nTa>               search-grid size of Ta-axis for crit finder [default: 25]
  --nkz=<nkz>               search-grid size of kz-axis for crit finder [default: 15]

  --heated=<heated>         case isothermal (0) or heated (1) [default: 1]
"""

"""
Ref: On the stability of circular Couette flow with radial heating, Ali and Weidman, JFM, 1990
Authors: Pratik Aghor and Mohammad Atif
"""
import numpy as np
from numpy import sqrt
import h5py

from dedalus import public as de
from eigentools import Eigenproblem, CriticalFinder
import matplotlib.pyplot as plt
from docopt import docopt
import os
from mpi4py import MPI

import logging
logger = logging.getLogger(__name__.split('.')[-1])

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
heated = bool(args['--heated'])

if args['--Ta_range'] == 'None':
    Ta_range = (2400, 7200)
else:
    Ta_range = [float(i) for i in args['--Ta_range'].split(',')]
if args['--kz_range'] == 'None':
    kz_range = (0.1, 8)
else:
    kz_range = [float(i) for i in args['--kz_range'].split(',')]
# plt.style.use('prl')
alpha = 2*np.pi/Gamma
nTa = int(args['--nTa'])
nkz = int(args['--nkz'])

"""
delta = R2 - R1
mu = Omega2/Omega1
eta = R1/R2

scale [L] = delta
scale [T] = delta/(R1 Omega1)
scale [V] = R1 Omega1
"""
#derived parameters
#derived parameters
Re1 = np.sqrt((Ta/2)*(1+eta)/(1-eta))
Re2 = mu*Re1

R1 = eta/(1. - eta)
R2 = 1./(1-eta)

root_name = "TC_aw_stability_Gr_{:.3e}_Pr_{:.3e}_eta_{:.3e}_mu_{:.3e}_m_{:d}_".format(Gr, Pr, eta, mu, m)
if MPI.COMM_WORLD.rank == 0:
    logger.info("Computing Stability for Gr={:.3e}, Pr={:.3e}, eta={:.3e}, mu = {:.3e}, m={:d}, nr = {:d}".format(Gr, Pr, eta, mu, m, nr))

variables = ['u', 'ur', 'v', 'vr', 'w', 'wr', 'p', 'T', 'Tr']

# domain
r_basis = de.Chebyshev('r', nr, interval=[R1, R2])

bases = [r_basis]
domain = de.Domain(bases, comm=MPI.COMM_SELF)
if alpha:
    Lz = 2*np.pi/alpha
else:
    Lz = Gamma

# problem
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

problem.parameters['kz'] = alpha
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

cf = CriticalFinder(ep, ("kz","Ta"), find_freq=True)
nx = nkz
ny = nTa
xpoints = np.linspace(kz_range[0], kz_range[1], nx)
ypoints = np.linspace(Ta_range[0], Ta_range[1], ny)

grid_file = 'results/'+root_name+'grid'
if os.path.exists(grid_file+'.h5'):
    if MPI.COMM_WORLD.rank == 0:
        cf.load_grid(grid_file+'.h5')
else:
    cf.grid_generator((xpoints,ypoints))
    cf.save_grid(grid_file)
if MPI.COMM_WORLD.rank == 0:
    try:
        crits = cf.crit_finder(maxiter=300)
        print("crits = ", crits)
        logger.info("m = {:d}, eta = {:5.4f}: Critical Ta = {:5.2f}, kz = {:7.5f}".format(m, eta, crits[1],crits[0]))
    except ValueError:

        crits = None
        print("Critical finder failed.")
    pax,cax = cf.plot_crit()

    """
    copied from eigentools CriticalFinder.plot_crit()
    find neutral stab points and save them for plotting later
    """
    x = cf.parameter_grids[0][0,:]
    y = cf.roots[:]
    y, x = y[np.isfinite(y)], x[np.isfinite(y)]
    # print("Re_n = ", y)
    # print("kz_n = ", x)
    hf = h5py.File('results/'+root_name+'neutral.h5', 'w')
    hf.create_dataset('kz_n', data=x)
    hf.create_dataset('Ta_n', data=y)

    # pax.collections[0].set_clim(-0.03,-0.08)

    cax.xaxis.set_ticks_position('top')
    cax.xaxis.set_label_position('top')
    pax.contour(cf.parameter_grids[0], cf.parameter_grids[1],cf.evalue_grid.real, levels=(0,), colors='white')
    pax.figure.savefig('figs/'+root_name+'growth_rates.png',dpi=300)
