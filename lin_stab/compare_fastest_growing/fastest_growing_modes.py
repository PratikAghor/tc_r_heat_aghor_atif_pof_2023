import matplotlib as mpl
from matplotlib import pylab
import numpy as np
import math
import matplotlib.pyplot as plt
from mpl_toolkits.axes_grid1.inset_locator import inset_axes
from mpl_toolkits.axes_grid1 import make_axes_locatable, axes_size
import netCDF4 as nc
from numpy.linalg import norm as norm
#############################
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
markers=np.array(['o', 's'])
#############################
'''
read and plot fastest growing modes 
for (eta, Gr, mu) 
holding two parameters constant at a time
'''
#############################
data = np.loadtxt("fastest.asc", skiprows=1)

eta_col = data[:, 0]
Gr_col = data[:, 1]
mu_col = data[:, 2]
m_col = data[:, 3]
Ta_c_col = data[:, 4]
k_c_col = data[:, 5]

eta_list=np.array([0.6, 0.9])
Gr_list=np.array([1000])
mu_list=np.array([-1., -0.5, -0.2, 0., 0.2, 0.5, 1.])

tol = 1e-8

# going vertically in a given table in the paper, fix (eta, Gr)

# fix(eta, Gr), vary mu data
for i in range(0, len(eta_list)):
        eta = eta_list[i]
        mu_start_idx = i*len(mu_list) 
        fig = plt.figure('m_vs_mu')  # Create a figure instance
        ax = fig.gca()  # Get current axes
        ax.plot(mu_list, m_col[mu_start_idx:mu_start_idx + len(mu_list)], linewidth=3, \
                marker=markers[i], label=r'$\eta = $' + str(eta))
        ax.legend(loc=0, prop={'size': 16})
        ax.set_xlabel(r'$\mu$',fontsize=24)
        ax.set_ylabel(r'$m$',fontsize=24)
        plt.tight_layout()
        fig.savefig('m_vs_mu_Gr_' + str(Gr_list[0]) + '.png')

        fig = plt.figure('Ta_c_vs_mu')  # Create a figure instance
        ax = fig.gca()  # Get current axes
        ax.semilogy(mu_list, Ta_c_col[mu_start_idx:mu_start_idx + len(mu_list)], linewidth=3, \
                marker=markers[i], label=r'$\eta = $' + str(eta))
        ax.legend(loc=0, prop={'size': 16})
        ax.set_xlabel(r'$\mu$',fontsize=24)
        ax.set_ylabel(r'$Ta_c$',fontsize=24)
        plt.yticks([1e3, 1e4, 1e5])
        plt.tight_layout()
        fig.savefig('Ta_c_vs_mu_Gr_' + str(Gr_list[0]) + '.png')

#############################

#############################