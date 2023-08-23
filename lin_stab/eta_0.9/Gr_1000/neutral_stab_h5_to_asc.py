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
#############################

Gr_range=np.array([1000])
mu_range=np.array([-1.0, -0.5, -0.2, 0.0, 0.2])
m_range=np.array([-3, -2, -1, 0, -1, -2, -3], int)

# for mu = 0.5
# mu_range = np.array([0.5])
# m_range=np.array([-12, -11, -10, -8, -7, -5, -4, -3, -2, -1, 0, 1], int)

# for mu = 1
# m_range=np.array([-4], int)
# mu_range = np.array([1])

eta= 0.6
Pr = 1
nr=32
# nticks=5
h5file=True # are we using asc or h5 file  

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
                neutral_stab_file = 'results/'+root_name+'neutral'+'.asc'
                neutral_stab_data = np.loadtxt(neutral_stab_file)
                Ta_n = neutral_stab_data[:, 1]
                kz_n = neutral_stab_data[:, 0]

            Ta_n = np.array(Ta_n)
            kz_n = np.array(kz_n)

            neutral_stab_data = np.zeros((len(kz_n), 2))
            neutral_stab_data[:, 0] = kz_n
            neutral_stab_data[:, 1] = Ta_n
            np.savetxt("neutral_asc/" + root_name + "neutral.asc", neutral_stab_data)