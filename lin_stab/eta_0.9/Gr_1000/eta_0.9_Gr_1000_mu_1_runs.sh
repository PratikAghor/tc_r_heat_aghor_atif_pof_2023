#!/bin/bash

# make sure dedalus env is active
#------------------------------------
# params
nproc=8
Pr=1
eta=0.9
Gr=1000
mu=1

nr=64
nTa=20
nkz=20
#------------------------------------
# mpirun -np ${nproc} python3 tc_r_heat_aw_stability.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=${mu} --m=0 --Ta_range='5e4, 2e5' --kz_range='0.01, 2' --nr=${nr} --nTa=${nTa} --nkz=${nkz} --heated=1 >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_0.log
# mpirun -np ${nproc} python3 tc_r_heat_aw_stability.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=${mu} --m=-1 --Ta_range='5e4, 2e5' --kz_range='0.01, 2' --nr=${nr} --nTa=${nTa} --nkz=${nkz} --heated=1 >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-1.log
# mpirun -np ${nproc} python3 tc_r_heat_aw_stability.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=${mu} --m=-2 --Ta_range='5e4, 2e5' --kz_range='0.01, 2' --nr=${nr} --nTa=${nTa} --nkz=${nkz} --heated=1 >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-2.log
# mpirun -np ${nproc} python3 tc_r_heat_aw_stability.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=${mu} --m=-3 --Ta_range='5e4, 2e5' --kz_range='0.01, 2' --nr=${nr} --nTa=${nTa} --nkz=${nkz} --heated=1 >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-3.log
# mpirun -np ${nproc} python3 tc_r_heat_aw_stability.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=${mu} --m=-4 --Ta_range='5e4, 2e5' --kz_range='0.01, 2' --nr=${nr} --nTa=${nTa} --nkz=${nkz} --heated=1 >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-4.log
#------------------------------------
# mpirun -np ${nproc} python3 tc_r_heat_aw_stability.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=${mu} --m=-5 --Ta_range='5e4, 2e5' --kz_range='0.01, 2' --nr=${nr} --nTa=${nTa} --nkz=${nkz} --heated=1 >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-5.log
# mpirun -np ${nproc} python3 tc_r_heat_aw_stability.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=${mu} --m=-6 --Ta_range='5e4, 2e5' --kz_range='0.01, 2' --nr=${nr} --nTa=${nTa} --nkz=${nkz} --heated=1 >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-6.log
# mpirun -np ${nproc} python3 tc_r_heat_aw_stability.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=${mu} --m=-7 --Ta_range='5e4, 2e5' --kz_range='0.01, 2' --nr=${nr} --nTa=${nTa} --nkz=${nkz} --heated=1 >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-7.log
# mpirun -np ${nproc} python3 tc_r_heat_aw_stability.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=${mu} --m=-8 --Ta_range='5e4, 2e5' --kz_range='0.01, 2' --nr=${nr} --nTa=${nTa} --nkz=${nkz} --heated=1 >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-8.log
# mpirun -np ${nproc} python3 tc_r_heat_aw_stability.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=${mu} --m=-9 --Ta_range='5e4, 2e5' --kz_range='0.01, 2' --nr=${nr} --nTa=${nTa} --nkz=${nkz} --heated=1 >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-9.log
# mpirun -np ${nproc} python3 tc_r_heat_aw_stability.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=${mu} --m=-10 --Ta_range='5e4, 2e5' --kz_range='0.01, 2' --nr=${nr} --nTa=${nTa} --nkz=${nkz} --heated=1 >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-10.log
# #------------------------------------
# mpirun -np ${nproc} python3 tc_r_heat_aw_stability.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=${mu} --m=-15 --Ta_range='1e5, 3e5' --kz_range='0.1, 0.5' --nr=${nr} --nTa=${nTa} --nkz=${nkz} --heated=1 >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-15.log
# mpirun -np ${nproc} python3 tc_r_heat_aw_stability.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=${mu} --m=-16 --Ta_range='5e4, 2e5' --kz_range='0.1, 0.8' --nr=${nr} --nTa=${nTa} --nkz=${nkz} --heated=1 >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-16.log
# mpirun -np ${nproc} python3 tc_r_heat_aw_stability.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=${mu} --m=-17 --Ta_range='5e4, 2e5' --kz_range='0.1, 0.8' --nr=${nr} --nTa=${nTa} --nkz=${nkz} --heated=1 >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-17.log
# mpirun -np ${nproc} python3 tc_r_heat_aw_stability.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=${mu} --m=-18 --Ta_range='2e4, 2e5' --kz_range='0.01, 1' --nr=${nr} --nTa=${nTa} --nkz=${nkz} --heated=1 >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-18.log
# mpirun -np ${nproc} python3 tc_r_heat_aw_stability.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=${mu} --m=-19 --Ta_range='2e4, 2e5' --kz_range='0.01, 1' --nr=${nr} --nTa=${nTa} --nkz=${nkz} --heated=1 >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-19.log
# mpirun -np ${nproc} python3 tc_r_heat_aw_stability.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=${mu} --m=-20 --Ta_range='2e4, 2e5' --kz_range='0.01, 1' --nr=${nr} --nTa=${nTa} --nkz=${nkz} --heated=1 >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-20.log
# mpirun -np ${nproc} python3 tc_r_heat_aw_stability.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=${mu} --m=-21 --Ta_range='2e4, 2e5' --kz_range='0.01, 1' --nr=${nr} --nTa=${nTa} --nkz=${nkz} --heated=1 >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-21.log
# mpirun -np ${nproc} python3 tc_r_heat_aw_stability.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=${mu} --m=-22 --Ta_range='2e4, 2e5' --kz_range='0.01, 1' --nr=${nr} --nTa=${nTa} --nkz=${nkz} --heated=1 >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-22.log
# mpirun -np ${nproc} python3 tc_r_heat_aw_stability.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=${mu} --m=-23 --Ta_range='2e4, 2e5' --kz_range='0.01, 1' --nr=${nr} --nTa=${nTa} --nkz=${nkz} --heated=1 >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-23.log
# mpirun -np ${nproc} python3 tc_r_heat_aw_stability.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=${mu} --m=-24 --Ta_range='2e4, 2e5' --kz_range='0.01, 1' --nr=${nr} --nTa=${nTa} --nkz=${nkz} --heated=1 >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-24.log
# mpirun -np ${nproc} python3 tc_r_heat_aw_stability.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=${mu} --m=-25 --Ta_range='2e4, 2e5' --kz_range='0.01, 1' --nr=${nr} --nTa=${nTa} --nkz=${nkz} --heated=1 >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-25.log
# mpirun -np ${nproc} python3 tc_r_heat_aw_stability.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=${mu} --m=-30 --Ta_range='2e4, 1e5' --kz_range='0.01, 1' --nr=${nr} --nTa=${nTa} --nkz=${nkz} --heated=1 >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-30.log
# mpirun -np ${nproc} python3 tc_r_heat_aw_stability.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=${mu} --m=-9 --Ta_range='0.1, 1e5' --kz_range='0.01, 5' --nr=${nr} --nTa=${nTa} --nkz=${nkz} --heated=1 >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-9.log
# mpirun -np ${nproc} python3 tc_r_heat_aw_stability.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=${mu} --m=-10 --Ta_range='0.1, 1e5' --kz_range='0.01, 5' --nr=${nr} --nTa=${nTa} --nkz=${nkz} --heated=1 >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-10.log
#------------------------------------
# mpirun -np ${nproc} python3 tc_r_heat_aw_stability.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=${mu} --m=1 --Ta_range='5e4, 2e5' --kz_range='0.1, 2' --nr=${nr} --nTa=${nTa} --nkz=${nkz} --heated=1 >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_1.log
# mpirun -np ${nproc} python3 tc_r_heat_aw_stability.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=${mu} --m=2 --Ta_range='5e4, 2e5' --kz_range='0.1, 2' --nr=${nr} --nTa=${nTa} --nkz=${nkz} --heated=1 >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_2.log
# mpirun -np ${nproc} python3 tc_r_heat_aw_stability.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=${mu} --m=3 --Ta_range='5e4, 2e5' --kz_range='0.1, 2' --nr=${nr} --nTa=${nTa} --nkz=${nkz} --heated=1 >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_3.log
# mpirun -np ${nproc} python3 tc_r_heat_aw_stability.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=${mu} --m=4 --Ta_range='5e4, 2e5' --kz_range='0.1, 2' --nr=${nr} --nTa=${nTa} --nkz=${nkz} --heated=1 >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_4.log
#------------------------------------
# mpirun -np ${nproc} python3 tc_r_heat_aw_stability.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=${mu} --m=5 --Ta_range='5e4, 2e5' --kz_range='0.1, 2' --nr=${nr} --nTa=${nTa} --nkz=${nkz} --heated=1 >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_5.log
# mpirun -np ${nproc} python3 tc_r_heat_aw_stability.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=${mu} --m=6 --Ta_range='5e4, 2e5' --kz_range='0.1, 2' --nr=${nr} --nTa=${nTa} --nkz=${nkz} --heated=1 >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_6.log
# mpirun -np ${nproc} python3 tc_r_heat_aw_stability.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=${mu} --m=7 --Ta_range='5e4, 2e5' --kz_range='0.1, 2' --nr=${nr} --nTa=${nTa} --nkz=${nkz} --heated=1 >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_7.log
# mpirun -np ${nproc} python3 tc_r_heat_aw_stability.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=${mu} --m=8 --Ta_range='5e4, 2e5' --kz_range='0.1, 2' --nr=${nr} --nTa=${nTa} --nkz=${nkz} --heated=1 >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_8.log
# mpirun -np ${nproc} python3 tc_r_heat_aw_stability.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=${mu} --m=9 --Ta_range='5e4, 2e5' --kz_range='0.1, 2' --nr=${nr} --nTa=${nTa} --nkz=${nkz} --heated=1 >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_9.log
# mpirun -np ${nproc} python3 tc_r_heat_aw_stability.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=${mu} --m=10 --Ta_range='5e4, 2e5' --kz_range='0.1, 2' --nr=${nr} --nTa=${nTa} --nkz=${nkz} --heated=1 >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_10.log
# mpirun -np ${nproc} python3 tc_r_heat_aw_stability.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=${mu} --m=11 --Ta_range='5e4, 2e5' --kz_range='0.1, 2' --nr=${nr} --nTa=${nTa} --nkz=${nkz} --heated=1 >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_11.log
# mpirun -np ${nproc} python3 tc_r_heat_aw_stability.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=${mu} --m=12 --Ta_range='5e4, 2e5' --kz_range='0.1, 2' --nr=${nr} --nTa=${nTa} --nkz=${nkz} --heated=1 >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_12.log

#------------------------------------
# search for instability islands
# printf "#########################\n" >> edgetracking.out >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_0.log
# mpirun -np ${nproc} python3 tc_r_heat_aw_stability.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=${mu} --m=0 --Ta_range='1, 2e5' --kz_range='0.1, 10' --nr=${nr} --nTa=${nTa} --nkz=${nkz} --heated=1 >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_0.log
# printf "#########################\n" >> edgetracking.out >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_0.log

# printf "#########################\n" >> edgetracking.out >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-1.log
# mpirun -np ${nproc} python3 tc_r_heat_aw_stability.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=${mu} --m=-1 --Ta_range='1, 2e5' --kz_range='0.1, 10' --nr=${nr} --nTa=${nTa} --nkz=${nkz} --heated=1 >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-1.log
# printf "#########################\n" >> edgetracking.out >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-1.log

# printf "#########################\n" >> edgetracking.out >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-2.log
# mpirun -np ${nproc} python3 tc_r_heat_aw_stability.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=${mu} --m=-2 --Ta_range='1, 2e5' --kz_range='0.1, 10' --nr=${nr} --nTa=${nTa} --nkz=${nkz} --heated=1 >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-2.log
# printf "#########################\n" >> edgetracking.out >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-2.log

# printf "#########################\n" >> edgetracking.out >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-3.log
# mpirun -np ${nproc} python3 tc_r_heat_aw_stability.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=${mu} --m=-3 --Ta_range='1, 2e5' --kz_range='0.1, 10' --nr=${nr} --nTa=${nTa} --nkz=${nkz} --heated=1 >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-3.log
# printf "#########################\n" >> edgetracking.out >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-3.log

# printf "#########################\n" >> edgetracking.out >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-4.log
# mpirun -np ${nproc} python3 tc_r_heat_aw_stability.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=${mu} --m=-4 --Ta_range='1, 2e5' --kz_range='0.1, 10' --nr=${nr} --nTa=${nTa} --nkz=${nkz} --heated=1 >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-4.log
# printf "#########################\n" >> edgetracking.out >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-4.log
# ------------------------------------
# printf "#########################\n" >> edgetracking.out >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-5.log
# mpirun -np ${nproc} python3 tc_r_heat_aw_stability.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=${mu} --m=-5 --Ta_range='1, 1e5' --kz_range='0.1, 10' --nr=${nr} --nTa=${nTa} --nkz=${nkz} --heated=1 >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-5.log
# printf "#########################\n" >> edgetracking.out >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-5.log

# printf "#########################\n" >> edgetracking.out >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-6.log
# mpirun -np ${nproc} python3 tc_r_heat_aw_stability.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=${mu} --m=-6 --Ta_range='1, 1e5' --kz_range='0.1, 10' --nr=${nr} --nTa=${nTa} --nkz=${nkz} --heated=1 >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-6.log
# printf "#########################\n" >> edgetracking.out >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-6.log

# printf "#########################\n" >> edgetracking.out >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-7.log
# mpirun -np ${nproc} python3 tc_r_heat_aw_stability.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=${mu} --m=-7 --Ta_range='1, 1e5' --kz_range='0.1, 10' --nr=${nr} --nTa=${nTa} --nkz=${nkz} --heated=1 >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-7.log
# printf "#########################\n" >> edgetracking.out >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-7.log

# printf "#########################\n" >> edgetracking.out >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-8.log
# mpirun -np ${nproc} python3 tc_r_heat_aw_stability.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=${mu} --m=-8 --Ta_range='1, 1e5' --kz_range='0.1, 10' --nr=${nr} --nTa=${nTa} --nkz=${nkz} --heated=1 >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-8.log
# printf "#########################\n" >> edgetracking.out >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-8.log

# printf "#########################\n" >> edgetracking.out >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-9.log
# mpirun -np ${nproc} python3 tc_r_heat_aw_stability.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=${mu} --m=-9 --Ta_range='1, 1e5' --kz_range='0.1, 10' --nr=${nr} --nTa=${nTa} --nkz=${nkz} --heated=1 >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-9.log
# printf "#########################\n" >> edgetracking.out >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-9.log

# printf "#########################\n" >> edgetracking.out >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-10.log
# mpirun -np ${nproc} python3 tc_r_heat_aw_stability.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=${mu} --m=-10 --Ta_range='1, 1e5' --kz_range='0.1, 10' --nr=${nr} --nTa=${nTa} --nkz=${nkz} --heated=1 >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-10.log
# printf "#########################\n" >> edgetracking.out >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-10.log

# ------------------------------------
# printf "#########################\n" >> edgetracking.out >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-11.log
# mpirun -np ${nproc} python3 tc_r_heat_aw_stability.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=${mu} --m=-11 --Ta_range='1, 1e5' --kz_range='0.1, 10' --nr=${nr} --nTa=${nTa} --nkz=${nkz} --heated=1 >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-11.log
# printf "#########################\n" >> edgetracking.out >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-11.log

# printf "#########################\n" >> edgetracking.out >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-12.log
# mpirun -np ${nproc} python3 tc_r_heat_aw_stability.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=${mu} --m=-12 --Ta_range='1, 1e5' --kz_range='0.1, 10' --nr=${nr} --nTa=${nTa} --nkz=${nkz} --heated=1 >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-12.log
# printf "#########################\n" >> edgetracking.out >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-12.log

# printf "#########################\n" >> edgetracking.out >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-15.log
# mpirun -np ${nproc} python3 tc_r_heat_aw_stability.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=${mu} --m=-15 --Ta_range='1, 1e5' --kz_range='0.1, 10' --nr=${nr} --nTa=${nTa} --nkz=${nkz} --heated=1 >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-15.log
# printf "#########################\n" >> edgetracking.out >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-15.log
# printf "#########################\n" >> edgetracking.out >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-16.log
# mpirun -np ${nproc} python3 tc_r_heat_aw_stability.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=${mu} --m=-16 --Ta_range='2e4, 2e5' --kz_range='0.1, 1' --nr=${nr} --nTa=${nTa} --nkz=${nkz} --heated=1 >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-16.log
# printf "#########################\n" >> edgetracking.out >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-16.log

# printf "#########################\n" >> edgetracking.out >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-17.log
# mpirun -np ${nproc} python3 tc_r_heat_aw_stability.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=${mu} --m=-17 --Ta_range='2e4, 2e5' --kz_range='0.1, 1' --nr=${nr} --nTa=${nTa} --nkz=${nkz} --heated=1 >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-17.log
# printf "#########################\n" >> edgetracking.out >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-17.log

# printf "#########################\n" >> edgetracking.out >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-18.log
# mpirun -np ${nproc} python3 tc_r_heat_aw_stability.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=${mu} --m=-18 --Ta_range='2e4, 2e5' --kz_range='0.1, 1' --nr=${nr} --nTa=${nTa} --nkz=${nkz} --heated=1 >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-18.log
# printf "#########################\n" >> edgetracking.out >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-18.log

# printf "#########################\n" >> edgetracking.out >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-19.log
# mpirun -np ${nproc} python3 tc_r_heat_aw_stability.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=${mu} --m=-19 --Ta_range='2e4, 2e5' --kz_range='0.1, 1' --nr=${nr} --nTa=${nTa} --nkz=${nkz} --heated=1 >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-19.log
# printf "#########################\n" >> edgetracking.out >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-19.log

printf "#########################\n" >> edgetracking.out >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-20.log
mpirun -np ${nproc} python3 tc_r_heat_aw_stability.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=${mu} --m=-20 --Ta_range='1, 2e5' --kz_range='0.1, 1' --nr=${nr} --nTa=${nTa} --nkz=${nkz} --heated=1 >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-20.log
printf "#########################\n" >> edgetracking.out >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-20.log

# printf "#########################\n" >> edgetracking.out >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-21.log
# mpirun -np ${nproc} python3 tc_r_heat_aw_stability.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=${mu} --m=-21 --Ta_range='2e4, 2e5' --kz_range='0.1, 1' --nr=${nr} --nTa=${nTa} --nkz=${nkz} --heated=1 >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-21.log
# printf "#########################\n" >> edgetracking.out >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-21.log

# printf "#########################\n" >> edgetracking.out >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-22.log
# mpirun -np ${nproc} python3 tc_r_heat_aw_stability.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=${mu} --m=-22 --Ta_range='2e4, 2e5' --kz_range='0.1, 1' --nr=${nr} --nTa=${nTa} --nkz=${nkz} --heated=1 >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-22.log
# printf "#########################\n" >> edgetracking.out >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-22.log

# ------------------------------------
# for (( m=-16; m>=-22; m-- ))
# do 
# 	echo "m = ${m}"
# 	printf "#########################\n" >> edgetracking.out >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_${m}.log
# 	mpirun -np ${nproc} python3 tc_r_heat_aw_stability.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=${mu} --m=${m} --Ta_range='2e4, 2e5' --kz_range='0.1, 1' --nr=${nr} --nTa=${nTa} --nkz=${nkz} --heated=1 >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_${m}.log
# 	printf "#########################\n" >> edgetracking.out >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_${m}.log
# 	echo "m = ${m} done \n"
# done
# ------------------------------------