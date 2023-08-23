#!/bin/bash

# make sure dedalus env is active
#------------------------------------
# mpirun -np ${nproc} python3 tc_r_heat_aw_stability.py --Pr=1 --eta=0.6 --Gr=1000 --mu=-0.2 --m=0  --nr=64 --nTa=40 --nkz=40 --heated=1 >> logfiles/neutral_stab_aw_Gr_1000_Pr_1_eta_0.6_mu_-0.2_m_0.log
# mpirun -np ${nproc} python3 tc_r_heat_aw_stability.py --Pr=1 --eta=0.6 --Gr=1000 --mu=-0.2 --m=-1 --Ta_range='1500, 3250' --kz_range='0.1, 6' --nr=64 --nTa=40 --nkz=40 --heated=1 >> logfiles/neutral_stab_aw_Gr_1000_Pr_1_eta_0.6_mu_-0.2_m_-1.log
# mpirun -np ${nproc} python3 tc_r_heat_aw_stability.py --Pr=1 --eta=0.6 --Gr=1000 --mu=-0.2 --m=-2 --Ta_range='1500, 3250' --kz_range='0.1, 6' --nr=64 --nTa=40 --nkz=40 --heated=1 >> logfiles/neutral_stab_aw_Gr_1000_Pr_1_eta_0.6_mu_-0.2_m_-2.log
# mpirun -np ${nproc} python3 tc_r_heat_aw_stability.py --Pr=1 --eta=0.6 --Gr=1000 --mu=-0.2 --m=-3 --Ta_range='3000, 4000' --kz_range='1, 6' --nr=64 --nTa=40 --nkz=40 --heated=1 >> logfiles/neutral_stab_aw_Gr_1000_Pr_1_eta_0.6_mu_-0.2_m_-3.log
# mpirun -np ${nproc} python3 tc_r_heat_aw_stability.py --Pr=1 --eta=0.6 --Gr=1000 --mu=-0.2 --m=-4 --Ta_range='50000, 60000' --kz_range='5, 10' --nr=64 --nTa=40 --nkz=40 --heated=1 >> logfiles/neutral_stab_aw_Gr_1000_Pr_1_eta_0.6_mu_-0.2_m_-4.log
#------------------------------------
# params
nproc=8
Pr=1
eta=0.6
Gr=1000
mu=-0.2

nr=48
nTa=20
nkz=20
#------------------------------------
# mpirun -np ${nproc} python3 tc_r_heat_aw_stability.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=${mu} --m=0 --Ta_range='3000, 4000' --kz_range='0.1, 5' --nr=${nr} --nTa=${nTa} --nkz=${nkz} --heated=1 >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_0.log
# mpirun -np ${nproc} python3 tc_r_heat_aw_stability.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=${mu} --m=-1 --Ta_range='1500, 3250' --kz_range='0.1, 6' --nr=${nr} --nTa=${nTa} --nkz=${nkz} --heated=1 >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-1.log
# mpirun -np ${nproc} python3 tc_r_heat_aw_stability.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=${mu} --m=-2 --Ta_range='1500, 3250' --kz_range='0.1, 6'--nr=${nr} --nTa=${nTa} --nkz=${nkz} --heated=1 >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-2.log
# mpirun -np ${nproc} python3 tc_r_heat_aw_stability.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=${mu} --m=-3 --Ta_range=',' --kz_range=',' --nr=${nr} --nTa=${nTa} --nkz=${nkz} --heated=1 >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-3.log
# mpirun -np ${nproc} python3 tc_r_heat_aw_stability.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=${mu} --m=-4 --Ta_range='50000, 60000' --kz_range='5, 10' --nr=${nr} --nTa=${nTa} --nkz=${nkz} --heated=1 >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-4.log
# mpirun -np ${nproc} python3 tc_r_heat_aw_stability.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=${mu} --m=-3 --Ta_range='3e3, 1e5' --kz_range='1, 10' --nr=${nr} --nTa=${nTa} --nkz=${nkz} --heated=1 >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-3.log

# closed neutral stab curves
mpirun -np ${nproc} python3 tc_r_heat_aw_stability.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=${mu} --m=-4 --Ta_range='1e3, 1e5' --kz_range='1, 20' --nr=${nr} --nTa=${nTa} --nkz=${nkz} --heated=1 >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-4.log
# open neutral stab curves
# mpirun -np ${nproc} python3 tc_r_heat_aw_stability.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=${mu} --m=-4 --Ta_range='3e3, 1e4' --kz_range='3, 6' --nr=${nr} --nTa=${nTa} --nkz=${nkz} --heated=1 >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-4.log

#------------------------------------
# mpirun -np ${nproc} python3 tc_r_heat_aw_stability.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=${mu} --m=1 --Ta_range='1e3, 1e4' --kz_range='1, 10' --nr=${nr} --nTa=${nTa} --nkz=${nkz} --heated=1 >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_1.log
# mpirun -np ${nproc} python3 tc_r_heat_aw_stability.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=${mu} --m=2 --Ta_range='1e3, 1e4' --kz_range='1, 10' --nr=${nr} --nTa=${nTa} --nkz=${nkz} --heated=1 >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_2.log
# mpirun -np ${nproc} python3 tc_r_heat_aw_stability.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=${mu} --m=3 --Ta_range='1e3, 2e4' --kz_range='1, 10' --nr=${nr} --nTa=${nTa} --nkz=${nkz} --heated=1 >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_3.log
# mpirun -np ${nproc} python3 tc_r_heat_aw_stability.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=${mu} --m=4 --Ta_range='1e3, 2e4' --kz_range='1, 10' --nr=${nr} --nTa=${nTa} --nkz=${nkz} --heated=1 >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_4.log
#------------------------------------