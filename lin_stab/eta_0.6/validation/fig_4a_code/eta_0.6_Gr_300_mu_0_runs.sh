#!/bin/bash

# make sure dedalus env is active
#------------------------------------
# params
nproc=8
Pr=15
eta=0.6
Gr=300
mu=0

nr=48
nTa=20
nkz=20
#------------------------------------
mpirun -np ${nproc} python3 tc_r_heat_aw_stability.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=${mu} --m=-2 --Ta_range='1, 1e4' --kz_range='1, 5' --nr=${nr} --nTa=${nTa} --nkz=${nkz} --heated=1 >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-2.log

mpirun -np ${nproc} python3 tc_r_heat_aw_stability.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=${mu} --m=2 --Ta_range='1, 1e4' --kz_range='1, 5' --nr=${nr} --nTa=${nTa} --nkz=${nkz} --heated=1 >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_2.log
#------------------------------------