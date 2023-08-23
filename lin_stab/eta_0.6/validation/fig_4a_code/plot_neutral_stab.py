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
# mcolors list
# mcolors.TABLEAU_COLORS.values()
default_colors = np.array(['#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b', '#e377c2', '#7f7f7f', '#bcbd22', '#17becf'])
markers=np.array(['o', '|', 'x', '^', 's'])
#############################

Gr_range=np.array([1000])
# mu_range=np.array([-1, -0.5])
# mu_range=np.array([-1.0])

# m_range=np.array([-3, -2, -1, 0, 1, 2, 3], int)

# for mu = 0
mu_range = np.array([0.])
m_range=np.array([-3, -2, -1, 0, 1], int)

# for mu = 0.5
# mu_range = np.array([0.5])
# m_range=np.array([-3, -4], int)


# for mu = 1
# m_range=np.array([-4], int)
# mu_range = np.array([1])

eta= 0.6
Pr = 1
nr=32
# nticks=5
h5file=False # are we using asc or h5 file  

for i in range(len(Gr_range)):
    Gr = Gr_range[i]
    for j in range(len(mu_range)):
        mu = mu_range[j]
        for k in range(len(m_range)):
            m = m_range[k]
            root_name = "TC_aw_stability_Gr_{:.3e}_Pr_{:.3e}_eta_{:.3e}_mu_{:.3e}_m_{:d}_".format(Gr, Pr, eta, mu, m)
            if(h5file == True):
                neutral_stab_file = 'results/'+root_name+'neutral'+'.h5'
                hf = h5py.File(neutral_stab_file, 'r')
                # print("hf.keys() = \n", hf.keys())
                Ta_n = hf.get("Ta_n")
                kz_n = hf.get("kz_n")
            else:
                neutral_stab_file = 'neutral_asc/'+root_name+'neutral'+'.asc'
                neutral_stab_data = np.loadtxt(neutral_stab_file)
                Ta_n = neutral_stab_data[:, 1]
                kz_n = neutral_stab_data[:, 0]

            Ta_n = np.array(Ta_n)
            kz_n = np.array(kz_n)

            fig = plt.figure(i+j)
            ax = fig.gca()

            if(m >= 0):
                ax.plot(kz_n, Ta_n, linewidth=3, color = default_colors[abs(int(m))], \
                    marker=markers[abs(int(m))], label=r'$m = $' + str(m))
            else:
                ax.plot(kz_n, Ta_n, linewidth=3, linestyle='--', color = default_colors[abs(int(m))], \
                    marker=markers[abs(int(m))], label=r'$m = $' + str(m))




            # beautify axes
            # ax.set_ylim(Ta_n.min(),Ta_n.max())
            # ax.set_xlim(kz_n.min(),kz_n.max())
            ax.ticklabel_format(axis='both', style='sci')

        ax.legend(loc="best", prop={'size': 16})
        ax.set_xlabel(r'$k_{z}$',fontsize=24)
        ax.set_ylabel(r'$Ta$',fontsize=24)
        # ax.locator_params(axis='y', nbins=nticks)
        # ax.set_xlim([0.1, 8])
        # ax.set_ylim([6e3, 8e3])
        plt.tight_layout()
        fig.savefig("figs/neutral_stab_Gr_" + str(Gr) + "_eta_" + str(eta) + "_mu_" + str(mu) + ".png")
