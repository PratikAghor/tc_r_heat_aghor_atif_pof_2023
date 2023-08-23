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

# going horizontally in a given table in the paper, fix (eta, mu)
 
# going across two tables at different radius ratios, fix (mu, Gr)

# fix(eta, Gr), vary mu data
for i in range(0, len(eta_list)):
        eta = eta_list[i]
        for j in range(0, len(Gr_list)):
                idx_arr = np.zeros(len(data), bool) # truth value array for indices
                Gr = Gr_list[j]
                print("-------------")
                print("eta =", eta, "Gr = ", Gr)
                for k in range(0, len(data)):
                        if(abs(eta_col[k] - eta) <= tol and abs(Gr_col[k] - Gr) <= tol):
                                idx_arr[k] = True

                # print stuff for each (eta, Gr) in a new loop
                print("vary mu for eta =", eta, "Gr = ", Gr)
                for k in range(0, len(data)):
                        if(idx_arr[k] == True):
                                print("mu =", mu_col[k], "\t m =", m_col[k], "\t Ta_c = ", Ta_c_col[k])
                        


# # fix (eta, mu), vary Gr data
# for i in range(0, len(eta_list)):
#         eta = eta_list[i]
#         for j in range(0, len(mu_list)):
#                 idx_arr = np.zeros(len(data), bool) # truth value array for indices
#                 mu = mu_list[j]
#                 print("-------------")
#                 print("eta =", eta, "mu = ", mu)
#                 for k in range(0, len(data)):
#                         if(abs(eta_col[k] - eta) <= tol and abs(mu_col[k] - mu) <= tol):
#                                 idx_arr[k] = True

#                 # print stuff for each (eta, mu) in a new loop
#                 print("vary Gr for eta =", eta, "mu = ", mu)
#                 for k in range(0, len(data)):
#                         if(idx_arr[k] == True):
#                                 print("Gr =", Gr_col[k], "\t Ta_c = ", Ta_c_col[k])
                                



# # fix (mu, Gr), vary eta data
# for i in range(0, len(mu_list)):
#         mu = mu_list[i]
#         for j in range(0, len(Gr_list)):
#                 idx_arr = np.zeros(len(data), bool) # truth value array for indices
#                 Gr = Gr_list[j]
#                 print("-------------")
#                 print("mu =", mu, "Gr = ", Gr)
#                 for k in range(0, len(data)):
#                         if(abs(mu_col[k] - mu) <= tol and abs(Gr_col[k] - Gr) <= tol):
#                                 idx_arr[k] = True

#                 # print stuff for each (eta, mu) in a new loop
#                 print("vary eta for mu =", mu, "Gr = ", Gr)
#                 for k in range(0, len(data)):
#                         if(idx_arr[k] == True):
#                                 print("eta =", eta_col[k], "\t Ta_c = ", Ta_c_col[k])







#############################

#############################