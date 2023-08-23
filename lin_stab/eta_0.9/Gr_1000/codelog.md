# TC with radial heating -- linear stability codelog
## Jan. 02-04, 2023: code validation: _aw suffix stands for Ali-Weidman scaling

------------------------------
## Jan. 16-20, 2023:
------------------------------
### $\eta = 0.9, Gr = 100$:
------------------------------
#### $\eta = 0.9, \mu = 0.5, m = 0, Gr = 100$
* ```python3 sigma_vs_k_tc_r_heat_aw.py --Pr=1 --eta=0.9 --mu=0.5 --Gr=100 --m=0 --Ta_range='100, 10000' --kz_range='0.1, 15' --nr=48 --heated=1 >> logfiles/sigma_vs_k_aw_Gr_100_Pr_1_eta_0.9_mu_0.5_m_0.log```
* ```mpirun -np 8 python3 tc_r_heat_aw_stability.py --Pr=1 --eta=0.9 --Gr=100 --mu=0.5 --m=0 --Ta_range='2500, 4000' --kz_range='0.1, 5' --nTa=20 --nkz=20 --nr=64 --heated=1 >> logfiles/neutral_stab_aw_Gr_100_Pr_1_eta_0.9_mu_0.5_m_0.log```



