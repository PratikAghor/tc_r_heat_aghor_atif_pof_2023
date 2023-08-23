"""
read data and plot neutral stability curves for different m (azimuthal wavenumber),
Gr (Grashof number) and mu (Re2/Re1)

"""

import numpy as np
import matplotlib as mpl
import matplotlib.pyplot as plt
from pylab import *
import h5py
from scipy import interpolate
from scipy.interpolate import splprep, splev
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
# mcolors list
# mcolors.TABLEAU_COLORS.values()
default_colors = np.array(['#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b', '#e377c2', '#7f7f7f', '#bcbd22', '#17becf', \
    'darkgreen', 'midnightblue', 'indigo', 'lightcoral', 'peru', 'olivedrab', 'turquoise', 'darkslategrey', 'skyblue', 'magenta', 'navy', \
    'cornflowerblue', 'royalblue', 'steelblue', 'blueviolet', 'mediumorchid'])
#############################

Gr_range=np.array([1000])
# mu_range=np.array([-1, -0.5])
# mu_range=np.array([-1.0])
m_range=np.array([-3, -4], int)
# mu_range=np.array([0.0, 0.2, 0.3, 0.33, 0.36, 0.4, 0.5, 0.7, 0.9, 0.93])
# mu_range=np.array([0.0, 0.2, 0.3, 0.36, 0.4, 0.5, 0.7, 0.9, 0.95, 1.0])


# for mu = 0
# mu_range = np.array([0.])
# m_range=np.array([-3, -2, -1, 0, 1], int)
# h5file=True # are we using asc or h5 file  

# for mu = 0.5
# mu_range = np.array([0.5])
# m_range=np.array([-3, -4], int)
# h5file=False # are we using asc or h5 file  


# for mu = 1
# m_range=np.array([-4], int)
# mu_range = np.array([1])
h5file=False # are we using asc or h5 file  


eta= 0.6
Pr = 1
nr=32
# nticks=5

for i in range(len(Gr_range)):
    Gr = Gr_range[i]
    for j in range(len(m_range)):
        m = m_range[j]
        if(m==-3):
            mu_range=np.array([0.0, 0.2, 0.3, 0.31, 0.36, 0.5, 0.7, 0.9, 0.93])
        elif(m==-4):
            mu_range=np.array([0.0, 0.2, 0.3, 0.36, 0.5, 0.7, 0.9, 0.95, 1.0])
        for k in range(len(mu_range)):
            mu = mu_range[k]
            root_name = "island_mu_" + str(mu) + "_m_" + str(int(m))
            neutral_stab_file = 'island_neutral_asc/'+root_name+'.asc'
            neutral_stab_data = np.loadtxt(neutral_stab_file)
            Ta_n = neutral_stab_data[:, 1]
            kz_n = neutral_stab_data[:, 0]

            Ta_n = np.array(Ta_n)
            kz_n = np.array(kz_n)

            print("m =", m, "mu =", mu)

            print("idx =", np.argmin(Ta_n), "crit Ta = ", Ta_n[np.argmin(Ta_n)], "kz_n = ", kz_n[np.argmin(Ta_n)])


            fig = plt.figure(root_name)
            ax = fig.gca()

            # note: since the points were extracted from the figs using webplotdigitizer automatically,
            # they are in increasing kz_n, so ax.plot will plot gibberish. Use scatter-plot instead.
            marker_size=5
            ax.scatter(kz_n, Ta_n, color = 'k', s=marker_size, label=r'$\mu = $' + str(mu))
            # beautify axes
            # ax.set_ylim(Ta_n.min(),Ta_n.max())
            # ax.set_xlim(kz_n.min(),kz_n.max())
            ax.ticklabel_format(axis='both', style='sci')

            ax.legend(loc=1, prop={'size': 16})
            ax.set_xlabel(r'$k_{z}$',fontsize=24)
            ax.set_ylabel(r'$Ta$',fontsize=24)
            # ax.locator_params(axis='y', nbins=nticks)
            # ax.set_xlim([0.45, 0.65])
            # ax.set_ylim([1e3, 5e4])
            plt.tight_layout()
            fig.savefig("island_figs/" + root_name + ".png")
