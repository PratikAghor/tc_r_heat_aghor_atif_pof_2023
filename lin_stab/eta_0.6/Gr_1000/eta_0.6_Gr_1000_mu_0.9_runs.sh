#!/bin/bash

# make sure dedalus env is active
#------------------------------------
# params
nproc=8
Pr=1
eta=0.6
Gr=1000
mu=0.9

nr=48
nTa=50
nkz=20
#------------------------------------
# mpirun -np ${nproc} python3 tc_r_heat_aw_stability.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=${mu} --m=0 --Ta_range='5000, 7000' --kz_range='4, 7' --nr=${nr} --nTa=${nTa} --nkz=${nkz} --heated=1 >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_0.log
# mpirun -np ${nproc} python3 tc_r_heat_aw_stability.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=${mu} --m=-1 --Ta_range=',' --kz_range=',' --nr=${nr} --nTa=${nTa} --nkz=${nkz} --heated=1 >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-1.log
# mpirun -np ${nproc} python3 tc_r_heat_aw_stability.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=${mu} --m=-2 --Ta_range=',' --kz_range=',' --nr=${nr} --nTa=${nTa} --nkz=${nkz} --heated=1 >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-2.log
# mpirun -np ${nproc} python3 tc_r_heat_aw_stability.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=${mu} --m=-3 --Ta_range='6800, 12000' --kz_range='0.4, 0.7' --nr=${nr} --nTa=${nTa} --nkz=${nkz} --heated=1 >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-3.log
mpirun -np ${nproc} python3 tc_r_heat_aw_stability.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=${mu} --m=-3 --Ta_range='1e3, 1.5e5' --kz_range='0.1, 10' --nr=${nr} --nTa=${nTa} --nkz=${nkz} --heated=1 >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-3.log
# mpirun -np ${nproc} python3 tc_r_heat_aw_stability.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=${mu} --m=-4 --Ta_range='2000, 20000' --kz_range='0.1, 1.2' --nr=${nr} --nTa=${nTa} --nkz=${nkz} --heated=1 >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-4.log
#------------------------------------
# mpirun -np ${nproc} python3 tc_r_heat_aw_stability.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=${mu} --m=1 --Ta_range='1, 1e4' --kz_range='0.01, 5' --nr=${nr} --nTa=${nTa} --nkz=${nkz} --heated=1 >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_1.log
# mpirun -np ${nproc} python3 tc_r_heat_aw_stability.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=${mu} --m=2 --Ta_range='1, 1e4' --kz_range='0.01, 5' --nr=${nr} --nTa=${nTa} --nkz=${nkz} --heated=1 >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_2.log
# mpirun -np ${nproc} python3 tc_r_heat_aw_stability.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=${mu} --m=3 --Ta_range='1e3, 1e4' --kz_range='0.1, 3' --nr=${nr} --nTa=${nTa} --nkz=${nkz} --heated=1 >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_3.log
# mpirun -np ${nproc} python3 tc_r_heat_aw_stability.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=${mu} --m=4 --Ta_range='1e3, 1e4' --kz_range='0.1, 3' --nr=${nr} --nTa=${nTa} --nkz=${nkz} --heated=1 >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_4.log
#------------------------------------