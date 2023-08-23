#!/bin/bash

# make sure dedalus env is active
# command line args to plot critical efs
#------------------------------------
Pr=1
eta=0.9
Gr=1000
nr=96
#------------------------------------
# python3 tc_r_heat_aw_eigenvalue_3d.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=-1 --m=2 --Ta=5138.40 --k=3.68113 --nr=${nr} --heated=1

# mv crit_ef crit_ef_mu_-1.0_m_2
# #------------------------------------
# python3 tc_r_heat_aw_eigenvalue_3d.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=-0.5 --m=-4 --Ta=2460.55 --k=3.18859 --nr=${nr} --heated=1

# mv crit_ef crit_ef_mu_-0.5_m_-4
# #------------------------------------
# python3 tc_r_heat_aw_eigenvalue_3d.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=-0.2 --m=-5 --Ta=1832.02 --k=2.99341 --nr=${nr} --heated=1

# mv crit_ef crit_ef_mu_-0.2_m_-5
# #------------------------------------
# python3 tc_r_heat_aw_eigenvalue_3d.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=0 --m=-6 --Ta=1719.71 --k=2.89803 --nr=${nr} --heated=1

# mv crit_ef crit_ef_mu_0.0_m_-6
# #------------------------------------
# python3 tc_r_heat_aw_eigenvalue_3d.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=0.2 --m=-8 --Ta=1765.43 --k=2.85565 --nr=${nr} --heated=1

# mv crit_ef crit_ef_mu_0.2_m_-8
# #------------------------------------

# python3 tc_r_heat_aw_eigenvalue_3d.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=0.5 --m=-11 --Ta=2232.38 --k=2.57911 --nr=${nr} --heated=1

# mv crit_ef crit_ef_mu_0.5_m_-11
#------------------------------------
python3 tc_r_heat_aw_eigenvalue_3d.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=1 --m=-20 --Ta=43411 --k=0.58277 --nr=${nr} --heated=1

mv crit_ef crit_ef_mu_1.0_m_-20

#------------------------------------
# python3 plot_ef.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=-1 --m=2 --Ta=5138.40 --k=3.68113 --heated=1
# python3 plot_ef.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=-0.5 --m=-4 --Ta=2460.55 --k=3.18859 --heated=1
# python3 plot_ef.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=-0.2 --m=-5 --Ta=1832.02 --k=2.99341 --heated=1
# python3 plot_ef.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=0 --m=-6 --Ta=1719.71 --k=2.89803 --heated=1
# python3 plot_ef.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=0.2 --m=-8 --Ta=1765.43 --k=2.85565 --heated=1
# python3 plot_ef.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=0.5 --m=-11 --Ta=2232.38 --k=2.57911 --heated=1
python3 plot_ef.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=1 --m=-20 --Ta=43411 --k=0.58277 --heated=1

#------------------------------------