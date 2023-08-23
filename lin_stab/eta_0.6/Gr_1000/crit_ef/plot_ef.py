"""
Usage:
  plot_ef.py [--Ta=<taylor> --Gr=<grashof> --Fr=<froude> \
  --Pr=<prandtl> --eta=<eta> --m=<m> --k=<k> --nr=<nr> --mu=<mu> \
  --ar=<Gamma> --heated=<heated> --cbar=<cbar>]

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
  --cbar=<cbar>             colorbar off (0) or on (1) [default: 0]
"""

import numpy as np
from numpy import sqrt, pi, inf, pad
from dedalus import public as de
import logging
from docopt import docopt
from eigentools import Eigenproblem
import h5py
import matplotlib as mpl
import matplotlib.pyplot as plt
from numpy.linalg import norm as norm
from mpl_toolkits.axes_grid1 import make_axes_locatable
from basic_units import radians
#-------------------------------------------------------
font = {'family' : 'normal',
        'weight' : 'bold',
        'size'   : 30}
#matplotlib.rc('font', **font)
from matplotlib import rc
rc('font',**{'family':'sans-serif','sans-serif':['Helvetica']})
# for Palatino and other serif fonts use:
#rc('font',**{'family':'serif','serif':['Palatino']})
rc('text', usetex=True)
mpl.rcParams.update({'font.size': 20})

font = {'family' : 'monospace',
        'weight' : 'bold',
        'size'   : 20}

from matplotlib import rc
#rc('font',**{'family':'sans-serif','sans-serif':['Lucida Grande']})
# for Palatino and other serif fonts use:
#rc('font',**{'family':'serif','serif':['Palatino']})
rc('text', usetex=True)
mpl.rcParams.update({'font.size': 20})
##########################################

logger = logging.getLogger(__name__)


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
heated = bool(int(args['--heated']))
cbar = bool(int(args['--cbar']))

# derived parameters
alpha = 2*np.pi/Gamma

Re1 = np.sqrt((Ta/2)*(1+eta)/(1-eta))
Re2 = mu*Re1

R1 = eta/(1. - eta)
R2 = 1./(1-eta)

#-------------------------------------------------------
# read hdf5 file
suffix = '_Gr_' + str(Gr) + '_mu_' + str(mu) + '_m_' + str(int(m))
dir_name = 'crit_ef_mu_' + str(mu) + '_m_' + str(int(m)) + '/'
crit_ef_file = dir_name + 'crit_ef_s1.h5'
hf = h5py.File(crit_ef_file, 'r')
# print("hf.keys() = \n", hf.keys())
# for dset in hf["scales"].keys():      
#     print(dset)

# for dset in hf["tasks"].keys():      
#     print(dset)

u = hf['tasks'].get('u')
v = hf['tasks'].get('v')
w = hf['tasks'].get('w')
T = hf['tasks'].get('T')



u = np.array(u)
v = np.array(v)
w = np.array(w)
T = np.array(T)

"""
find infnorm to normalize
since r variation is the same across z
use one row to find infnorm
"""
# unorm = norm(u[0, 0, 0, :], inf)
# vnorm = norm(v[0, 0, 0, :], inf)
# wnorm = norm(w[0, 0, 0, :], inf)
# Tnorm = norm(T[0, 0, 0, :], inf)

unorm = u.max()
vnorm = v.max()
wnorm = w.max()
Tnorm = T.max()

unorm = ((abs(u).max()).max()).max()
vnorm = ((abs(v).max()).max()).max()
wnorm = ((abs(w).max()).max()).max()
Tnorm = ((abs(T).max()).max()).max()

print("np.shape(T) = [t, z, phi, r]", np.shape(T)) 


# define domain from the fields and kz, etc
[nt, nz, nphi, nr] = np.shape(T)

padded_u = np.zeros(((nz+1, nphi+1, nr)))
padded_v = np.zeros(((nz+1, nphi+1, nr)))
padded_w = np.zeros(((nz+1, nphi+1, nr)))
padded_T = np.zeros(((nz+1, nphi+1, nr)))

Lz = 2.0*pi/k
Lphi = 2.0*pi
z_basis = de.Fourier('z', nz, interval=[0., Lz])
phi_basis = de.Fourier('phi', nphi, interval=[0., Lphi])
r_basis = de.Chebyshev('r', nr, interval=[R1, R2])

bases = [z_basis, phi_basis, r_basis]

domain = de.Domain(bases, grid_dtype=np.float64)

z = np.array(z_basis.grid())
phi = np.array(phi_basis.grid())
r = np.array(r_basis.grid())

"""
pad values in z and phi for plotting
(since Fourier assumes periodic bc's, 
last value is assumed to be the same as the first one)
"""

z = pad(z, pad_width=((0, 1)), mode='constant', constant_values=Lz) # pad z array to include Lz
phi = pad(phi, pad_width=((0, 1)), mode='constant', constant_values=2*pi) # pad phi array to include 2pi

for k in range(0, nr):
  for j in range(0, nphi):
    for i in range(0, nz):
      padded_u[i, j, k] = u[0, i, j, k]
      padded_v[i, j, k] = v[0, i, j, k]
      padded_w[i, j, k] = w[0, i, j, k]
      padded_T[i, j, k] = T[0, i, j, k]


# now substitute periodic bcs for plotting
for k in range(0, nr):
  for j in range(0, nphi):
    padded_u[nz, j, k] =  padded_u[0, j, k]
    padded_v[nz, j, k] =  padded_v[0, j, k]
    padded_w[nz, j, k] =  padded_w[0, j, k]
    padded_T[nz, j, k] =  padded_T[0, j, k]
  # finally, add in phi periodic bc
  for i in range(0, nz+1):
    padded_u[i, nphi, k] =  padded_u[i, 0, k]
    padded_v[i, nphi, k] =  padded_v[i, 0, k]
    padded_w[i, nphi, k] =  padded_w[i, 0, k]
    padded_T[i, nphi, k] =  padded_T[i, 0, k]


print("np.shape(padded_T) = [t, z, phi, r]", np.shape(padded_T)) 

#-------------------------------------------------------
# plot settings
color_map="viridis"
#-------------------------------------------------------
skip = 2
R, Z =  np.meshgrid(r, z)
vmin=T.min()
vmax=T.max()
aspect=1
cbar_fraction = aspect

fig = plt.figure('T_contour')  # Create a figure instance
ax = fig.gca()
cm = ax.contourf(r, z, padded_T[:, 0, :], vmin=vmin, vmax=vmax,cmap=color_map)
Q = ax.quiver(R[::skip, ::skip], Z[::skip, ::skip], padded_u[::skip, 0, ::skip], padded_w[::skip, 0, ::skip]) #, \
  # pivot='tail', width=0.005, scale=50)
ax.set_aspect('auto')
plt.xticks([R1, (R1+R2)/2, R2])

if(cbar):
  # create an axes on the right side of ax. The width of cax will be 5%
  # of ax and the padding between cax and ax will be fixed at 0.05 inch.
  divider = make_axes_locatable(ax)
  cax = divider.append_axes("right", size="5%", pad=0.1)
  dticks = vmax/2
  ticks = np.arange(vmin, vmax+dticks, dticks)
  cbar = fig.colorbar(cm, ticks = ticks, fraction=cbar_fraction, cax = cax, pad=0.04)

fig.savefig(dir_name + 'quiver_uw_T_contour' + suffix + '.pdf', bbox_inches='tight')
#-------------------------------------------------------
fig = plt.figure('v_contour')  # Create a figure instance
ax = fig.gca()
cm = ax.contourf(r, z, padded_v[:, 0, :], cmap=color_map)
Q = ax.quiver(R[::skip, ::skip], Z[::skip, ::skip], padded_u[::skip, 0, ::skip], padded_w[::skip, 0, ::skip]) #, \
  # pivot='mid', width=0.01, scale=50)
ax.set_aspect('auto')
plt.xticks([R1, (R1+R2)/2, R2])
fig.savefig(dir_name + 'v_contour' + suffix + '.pdf', bbox_inches='tight')
#-------------------------------------------------------
# annular plots:
phiskip = 1
rskip = 3
R, PHI = np.meshgrid(r, phi)
midplane = int(nz/3)
#-------------------------------------------------------
fig = plt.figure()
ax = fig.add_subplot(projection='polar')
cm = ax.contourf(PHI, R, padded_T[midplane, :, :], vmin=vmin, vmax=vmax,cmap=color_map, xunits=radians)
Q = ax.quiver(PHI[::phiskip, ::rskip], R[::phiskip, ::rskip], padded_v[midplane, ::phiskip, ::rskip], padded_u[midplane, ::phiskip, ::rskip], \
  pivot='tail', width=0.005, scale=20)
ax.set_rorigin(eta) # just an offset to show annulus
ax.grid(False)
ax.set_xticks([])
ax.set_yticks([]) # ax.set_yticks([R1, R2])
# ax.set_theta_zero_location('W', offset=10)
fig.savefig(dir_name + 'annular_T_contour' + suffix + '.pdf', bbox_inches='tight')
#-------------------------------------------------------
#-------------------------------------------------------
fig = plt.figure('annular_v_contour')
ax = fig.add_subplot(projection='polar')
cm = ax.contourf(PHI, R, padded_v[midplane, :, :], vmin=vmin, vmax=vmax,cmap=color_map, xunits=radians)
# Q = ax.quiver(PHI[::phiskip, ::rskip], R[::phiskip, ::rskip], padded_v[midplane, ::phiskip, ::rskip], padded_u[midplane, ::phiskip, ::rskip], \
#   pivot='tail', width=0.001, scale=40)
ax.set_rorigin(eta) # just an offset to show annulus
ax.grid(False)
ax.set_xticks([])
ax.set_yticks([]) # ax.set_yticks([R1, R2])
# ax.set_theta_zero_location('W', offset=10)
fig.savefig(dir_name + 'annular_v_contour' + suffix + '.pdf', bbox_inches='tight')
#-------------------------------------------------------