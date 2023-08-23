#!/bin/bash

# make sure dedalus env is active
# command line args to plot critical efs
#------------------------------------
#------------------------------------
Pr=1
eta=0.6
Gr=1000
nr=48
#------------------------------------
# python3 tc_r_heat_aw_eigenvalue_3d.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=-1 --m=2 --Ta=14933.89 --k=4.86187 --nr=${nr} --heated=1

# mv crit_ef crit_ef_mu_-1.0_m_2
#------------------------------------
python3 plot_ef.py --mu=-1 --m=2 --Ta=14933.89 --k=4.86187 --heated=1
# python3 plot_ef.py --mu=-0.5 --m=0 --k=3.88670
# python3 plot_ef.py --mu=-0.2 --m=-2 --k=2.87532
# python3 plot_ef.py --mu=0 --m=-2 --k=2.4077547343852066
# python3 plot_ef.py --mu=0.2 --m=-3 --k=2.183621330421911
# python3 plot_ef.py --mu=0.5 --m=-3 --k=1.5080179919085506
python3 plot_ef.py --mu=1 --m=-4 --Ta=6209.99 --k=0.5695058435157576
#------------------------------------
# islands
# python3 tc_r_heat_aw_eigenvalue_3d.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=0 --m=-4 --Ta=4390 --k=4.104 --nr=${nr} --heated=1
# python3 tc_r_heat_aw_eigenvalue_3d.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=0.2 --m=-4 --Ta=2243 --k=2.9421 --nr=${nr} --heated=1
