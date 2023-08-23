"""
read data and plot neutral stability curves for different m (azimuthal wavenumber),
Gr (Grashof number) and mu (Omega2/Omega1)

"""

import numpy as np
import matplotlib as mpl
import matplotlib.pyplot as plt
from pylab import *
import h5py
##########################################
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
default_colors = np.array(['#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b', '#e377c2', '#7f7f7f', '#bcbd22', '#17becf', \
    'darkgreen', 'midnightblue', 'indigo', 'lightcoral', 'peru', 'olivedrab', 'turquoise', 'darkslategrey', 'skyblue', 'magenta', 'navy', \
    'cornflowerblue', 'royalblue', 'steelblue', 'blueviolet', 'mediumorchid'])

##########################################
Gr_range=np.array([100, 300])
m_range=np.array([-2], int)
mu_range=np.array([0])
eta= 0.6
Pr = 15
nr=32
m=-2


#--------------------------------
open_parabola = 'aw_fig_4a_validation_open_parabola.asc'
closed_loop = 'aw_fig_4a_validation_closed_loop.asc'

# data from ali-weidman jfm, 1990
aw_open_parabola = 'aw_fig_4a_open_parabola.asc' 
aw_closed_loop = 'aw_fig_4a_closed_loop.asc'

open_parabola = np.loadtxt(open_parabola)
closed_loop = np.loadtxt(closed_loop)
aw_open_parabola = np.loadtxt(aw_open_parabola)
aw_closed_loop = np.loadtxt(aw_closed_loop)

Ta_no = open_parabola[:, 1]
kz_no = open_parabola[:, 0]
Ta_nc = closed_loop[:, 1]
kz_nc = closed_loop[:, 0]

# data extracted from ali-weidman jfm, 1990
aw_Ta_no = aw_open_parabola[:, 1]
aw_kz_no = aw_open_parabola[:, 0]
aw_Ta_nc = aw_closed_loop[:, 1]
aw_kz_nc = aw_closed_loop[:, 0]


fig = plt.figure('aw_fig_4a_validation')
ax = fig.gca()

ax.plot(aw_kz_no, aw_Ta_no, '-o', linewidth=3, color='k')
ax.plot(aw_kz_nc, aw_Ta_nc, '-o', linewidth=3, color='k', label=r'Ali and Weidman, 1990')
ax.plot(kz_no, Ta_no, linewidth=3, linestyle='--', color = default_colors[abs(int(m))], marker=(abs(int(m)), 0, 0))
ax.plot(kz_nc, Ta_nc, linewidth=3, linestyle='--', color = default_colors[abs(int(m))], marker=(abs(int(m)), 0, 0), label=r'present code')

ax.set_xlim([1, 4])
ax.set_ylim([0, 5500])

ax.legend(loc='best', prop={'size': 16})
ax.set_xlabel(r'$k_{z}$',fontsize=24)
ax.set_ylabel(r'$Ta$',fontsize=24)
plt.tight_layout()
fig.savefig("aw_fig_4a_validation.pdf", bbox_inches='tight')
#--------------------------------