#!/bin/bash

# make sure dedalus env is active
#------------------------------------
# params
nproc=8
Pr=1
eta=0.9
Gr=1000
mu=-0.2

nr=48
nTa=20
nkz=20
#------------------------------------
# mpirun -np ${nproc} python3 tc_r_heat_aw_stability.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=${mu} --m=0 --Ta_range='500, 3000' --kz_range='1, 6' --nr=${nr} --nTa=${nTa} --nkz=${nkz} --heated=1 >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_0.log
# mpirun -np ${nproc} python3 tc_r_heat_aw_stability.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=${mu} --m=-1 --Ta_range='500, 3000' --kz_range='1, 6' --nr=${nr} --nTa=${nTa} --nkz=${nkz} --heated=1 >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-1.log
# mpirun -np ${nproc} python3 tc_r_heat_aw_stability.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=${mu} --m=-2 --Ta_range='500, 3000' --kz_range='1, 6' --nr=${nr} --nTa=${nTa} --nkz=${nkz} --heated=1 >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-2.log
# mpirun -np ${nproc} python3 tc_r_heat_aw_stability.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=${mu} --m=-3 --Ta_range='500, 3000' --kz_range='1, 6' --nr=${nr} --nTa=${nTa} --nkz=${nkz} --heated=1 >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-3.log
# mpirun -np ${nproc} python3 tc_r_heat_aw_stability.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=${mu} --m=-4 --Ta_range='500, 3000' --kz_range='1, 6' --nr=${nr} --nTa=${nTa} --nkz=${nkz} --heated=1 >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-4.log
#------------------------------------
# mpirun -np ${nproc} python3 tc_r_heat_aw_stability.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=${mu} --m=-5 --Ta_range='100, 2000' --kz_range='0.1, 6' --nr=${nr} --nTa=${nTa} --nkz=${nkz} --heated=1 >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-5.log
# mpirun -np ${nproc} python3 tc_r_heat_aw_stability.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=${mu} --m=-6 --Ta_range='500, 3000' --kz_range='0.1, 6' --nr=${nr} --nTa=${nTa} --nkz=${nkz} --heated=1 >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-6.log
# mpirun -np ${nproc} python3 tc_r_heat_aw_stability.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=${mu} --m=-7 --Ta_range='100, 2000' --kz_range='0.1, 6' --nr=${nr} --nTa=${nTa} --nkz=${nkz} --heated=1 >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-7.log
# mpirun -np ${nproc} python3 tc_r_heat_aw_stability.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=${mu} --m=-8 --Ta_range='100, 2000' --kz_range='0.1, 6' --nr=${nr} --nTa=${nTa} --nkz=${nkz} --heated=1 >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-8.log
# mpirun -np ${nproc} python3 tc_r_heat_aw_stability.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=${mu} --m=-9 --Ta_range='100, 2000' --kz_range='0.1, 6' --nr=${nr} --nTa=${nTa} --nkz=${nkz} --heated=1 >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-9.log
# mpirun -np ${nproc} python3 tc_r_heat_aw_stability.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=${mu} --m=-10 --Ta_range='100, 2000' --kz_range='0.1, 6' --nr=${nr} --nTa=${nTa} --nkz=${nkz} --heated=1 >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-10.log
#------------------------------------
mpirun -np ${nproc} python3 tc_r_heat_aw_stability.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=${mu} --m=1 --Ta_range='100, 3000' --kz_range='0.1, 7' --nr=${nr} --nTa=${nTa} --nkz=${nkz} --heated=1 >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_1.log
mpirun -np ${nproc} python3 tc_r_heat_aw_stability.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=${mu} --m=2 --Ta_range='100, 3000' --kz_range='0.1, 7' --nr=${nr} --nTa=${nTa} --nkz=${nkz} --heated=1 >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_2.log
mpirun -np ${nproc} python3 tc_r_heat_aw_stability.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=${mu} --m=3 --Ta_range='100, 3000' --kz_range='0.1, 7' --nr=${nr} --nTa=${nTa} --nkz=${nkz} --heated=1 >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_3.log
mpirun -np ${nproc} python3 tc_r_heat_aw_stability.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=${mu} --m=4 --Ta_range='100, 3000' --kz_range='0.1, 7' --nr=${nr} --nTa=${nTa} --nkz=${nkz} --heated=1 >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_4.log
#------------------------------------
mpirun -np ${nproc} python3 tc_r_heat_aw_stability.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=${mu} --m=5 --Ta_range='100, 3000' --kz_range='0.1, 7' --nr=${nr} --nTa=${nTa} --nkz=${nkz} --heated=1 >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_5.log
mpirun -np ${nproc} python3 tc_r_heat_aw_stability.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=${mu} --m=6 --Ta_range='100, 3000' --kz_range='0.1, 7' --nr=${nr} --nTa=${nTa} --nkz=${nkz} --heated=1 >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_6.log
mpirun -np ${nproc} python3 tc_r_heat_aw_stability.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=${mu} --m=7 --Ta_range='100, 3000' --kz_range='0.1, 7' --nr=${nr} --nTa=${nTa} --nkz=${nkz} --heated=1 >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_7.log
mpirun -np ${nproc} python3 tc_r_heat_aw_stability.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=${mu} --m=8 --Ta_range='100, 3000' --kz_range='0.1, 7' --nr=${nr} --nTa=${nTa} --nkz=${nkz} --heated=1 >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_8.log
mpirun -np ${nproc} python3 tc_r_heat_aw_stability.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=${mu} --m=9 --Ta_range='100, 3000' --kz_range='0.1, 7' --nr=${nr} --nTa=${nTa} --nkz=${nkz} --heated=1 >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_9.log
mpirun -np ${nproc} python3 tc_r_heat_aw_stability.py --Pr=${Pr} --eta=${eta} --Gr=${Gr} --mu=${mu} --m=10 --Ta_range='100, 3000' --kz_range='0.1, 7' --nr=${nr} --nTa=${nTa} --nkz=${nkz} --heated=1 >> logfiles/neutral_stab_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_10.log
#------------------------------------