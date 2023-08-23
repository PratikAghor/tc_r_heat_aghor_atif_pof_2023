#!/bin/bash

# make sure dedalus env is active
# command line args to plot critical efs
#------------------------------------
Pr=1
eta=0.9
Gr=1000
nr=96
#------------------------------------
printf "commenting out generation of eigfunctions and crit_ef directory from tc_r_heat_aw_eigenvalue_3d.py, since only interested in critical frequencies \n" >> get_freq_mu_1.out

python3 tc_r_heat_aw_eigenvalue_3d.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=1 --m=-22 --Ta=48851.97 --k=0.583363 --nr=${nr} --heated=1 >> get_freq_mu_1.out
python3 tc_r_heat_aw_eigenvalue_3d.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=1 --m=-21 --Ta=45648.53 --k=0.58320  --nr=${nr} --heated=1 >> get_freq_mu_1.out
python3 tc_r_heat_aw_eigenvalue_3d.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=1 --m=-20 --Ta=43411.00 --k=0.58277  --nr=${nr} --heated=1 >> get_freq_mu_1.out
python3 tc_r_heat_aw_eigenvalue_3d.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=1 --m=-19 --Ta=44753.92 --k=0.58333  --nr=${nr} --heated=1 >> get_freq_mu_1.out
python3 tc_r_heat_aw_eigenvalue_3d.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=1 --m=-18 --Ta=48272.25 --k=0.53983  --nr=${nr} --heated=1 >> get_freq_mu_1.out
#------------------------------------