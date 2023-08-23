"""
read data and plot dispersion relation (sigma vs k) curves 

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
Pr = 1
Gr = 1000
eta = 0.6
mu = 0.5
m_vals = np.array([0, -1, -2, -3, -4])
Taskip = 1
nr = 32
spurious = -999
for n in range(0, len(m_vals)):
    m = m_vals[n]
    root_name = "sigma_vs_k_aw_Gr_{:.3e}_Pr_{:.3e}_eta_{:.3e}_mu_{:.3e}_m_{:d}".format(Gr, Pr, eta, mu, m)
    sigma_vs_k_file = 'results/'+root_name+'.h5'
    hf = h5py.File(sigma_vs_k_file, 'r')
    # print("hf.keys() = \n", hf.keys())
    Tapoints = hf.get("Ta")
    sigma_vs_k = hf.get("sigma_vs_k")

    Tapoints = np.array(Tapoints)
    sigma_vs_k = np.array(sigma_vs_k)

    nTa = len(Tapoints)
    nk = len(sigma_vs_k[0, :, 0])

    # sigma_vs_k_filtered = np.zeros((nTa, nk, 3))
    # remove spurious eigenvals
    cutoff = 1e3

    for i in range(0, Taskip, nTa):
        for j in range(0, nk):
            if (abs(sigma_vs_k[i, j, 1]) > cutoff):
                sigma_vs_k[i, j, 1] = spurious


    fig = plt.figure(n)
    ax = fig.gca()

    for i in range(0, len(Tapoints)):
        Ta = Tapoints[i]
        kz = sigma_vs_k[i, :, 0]
        sigma_r = sigma_vs_k[i, :, 1]
        idx = []
        for j in range(0, nk):
            if(sigma_r[j] == spurious):
                idx.append(j)
        kz = np.delete(kz, [idx])
        sigma_r = np.delete(sigma_r, [idx])

        ax.plot(kz, sigma_r, linewidth=2, label=r'$Ta = \,$' + "{:.3e}".format(Ta))
        ax.axhline(y=0, linewidth = 2, color='k')
    # ax.set_ylim([-10, 10])
    ax.legend(loc=4)
    ax.set_xlabel(r'$k_{z}$',fontsize=24)
    ax.set_ylabel(r'$\sigma_r$',fontsize=24)
    plt.tight_layout()
    fig.savefig("figs/sigma_vs_k_" + root_name + ".png")
##########################################