#!/bin/bash

# make sure dedalus env is active
#------------------------------------
# params
nproc=8
Pr=1
eta=0.9
Gr=1000
mu=-1

nr=48
nTa=5
nkz=20
#------------------------------------
echo 'mu =' ${mu} ' , m = 0 \n' 
printf '############################################################################# \n' >> logfiles/sigma_vs_k_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_0.log
python3 sigma_vs_k_tc_r_heat_aw.py --Pr=${Pr} --eta=${eta} --mu=${mu} --Gr=${Gr} --m=0 --Ta_range='100, 10000' --kz_range='0.1, 8' --nr=${nr} --nTa=${nTa} --nkz=${nkz} --heated=1 >> logfiles/sigma_vs_k_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_0.log
printf '############################################################################# \n' >> logfiles/sigma_vs_k_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_0.log
#------------------------------------
echo 'mu =' ${mu} ' , m = -1 \n' 
printf '############################################################################# \n' >> logfiles/sigma_vs_k_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-1.log
python3 sigma_vs_k_tc_r_heat_aw.py --Pr=${Pr} --eta=${eta} --mu=${mu} --Gr=${Gr} --m=-1 --Ta_range='100, 10000' --kz_range='0.1, 8' --nr=${nr} --nTa=${nTa} --nkz=${nkz} --heated=1 >> logfiles/sigma_vs_k_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-1.log
printf '############################################################################# \n' >> logfiles/sigma_vs_k_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-1.log
#------------------------------------
echo 'mu =' ${mu} ' , m = -2 \n' 
printf '############################################################################# \n' >> logfiles/sigma_vs_k_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-2.log
python3 sigma_vs_k_tc_r_heat_aw.py --Pr=${Pr} --eta=${eta} --mu=${mu} --Gr=${Gr} --m=-2 --Ta_range='100, 10000' --kz_range='0.1, 8' --nr=${nr} --nTa=${nTa} --nkz=${nkz} --heated=1 >> logfiles/sigma_vs_k_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-2.log
printf '############################################################################# \n' >> logfiles/sigma_vs_k_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-2.log
#------------------------------------

echo 'mu =' ${mu} ' , m = -3 \n' 
printf '############################################################################# \n' >> logfiles/sigma_vs_k_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-3.log
python3 sigma_vs_k_tc_r_heat_aw.py --Pr=${Pr} --eta=${eta} --mu=${mu} --Gr=${Gr} --m=-3 --Ta_range='100, 10000' --kz_range='0.1, 8' --nr=${nr} --nTa=${nTa} --nkz=${nkz} --heated=1 >> logfiles/sigma_vs_k_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-3.log
printf '############################################################################# \n' >> logfiles/sigma_vs_k_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-3.log
#------------------------------------
echo 'mu =' ${mu} ' , m = -4 \n'
printf '############################################################################# \n' >> logfiles/sigma_vs_k_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-4.log 
python3 sigma_vs_k_tc_r_heat_aw.py --Pr=${Pr} --eta=${eta} --mu=${mu} --Gr=${Gr} --m=-4 --Ta_range='100, 10000' --kz_range='0.1, 8' --nr=${nr} --nTa=${nTa} --nkz=${nkz} --heated=1 >> logfiles/sigma_vs_k_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-4.log
printf '############################################################################# \n' >> logfiles/sigma_vs_k_aw_Gr_${Gr}_Pr_${Pr}_eta_${eta}_mu_${mu}_m_-4.log

#------------------------------------
