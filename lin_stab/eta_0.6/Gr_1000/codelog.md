# TC with radial heating -- linear stability codelog
## Jan. 02-04, 2023: code validation: _aw suffix stands for Ali-Weidman scaling

------------------------------
## Jan. 16-20, 2023:
------------------------------
### $\eta = 0.6, Gr = 1000$ runs:
------------------------------
### $\eta = 0.6, \mu = -1, m = 0, Gr = 1000$
* ```python3 sigma_vs_k_tc_r_heat_aw.py --Pr=1 --eta=0.6 --Gr=1000 --mu=-1 --m=0 --Ta_range='12500, 25000' --kz_range='0.1, 15' --nTa=5 --nr=48 --heated=1 >> logfiles/sigma_vs_k_aw_Gr_1000_Pr_1_eta_0.6_mu_-1_m_0.log```
* ```mpirun -np 8 python3 tc_r_heat_aw_stability.py --Pr=1 --eta=0.6 --Gr=1000 --mu=-1 --m=0 --Ta_range='16000, 18500' --kz_range='4, 10' --nr=64 --nTa=40 --nkz=40 --heated=1 >> logfiles/neutral_stab_aw_Gr_1000_Pr_1_eta_0.6_mu_-1_m_0.log```
* ```python3 tc_r_heat_aw_eigenvalue_3d.py --Pr=1 --eta=0.6 --Gr=1000 --mu=-1 --m=0 --Ta=17092.65 --k=6.23491 --nr=96 --heated=1 >> logfiles/neutral_stab_aw_Gr_1000_Pr_1_eta_0.6_mu_-1_m_0.log```


### $\eta = 0.6, \mu = -1, m = -1, Gr = 1000$
* ```python3 sigma_vs_k_tc_r_heat_aw.py --Pr=1 --eta=0.6 --Gr=1000 --mu=-1 --m=-1 --Ta_range='12500, 25000' --kz_range='0.1, 15' --nTa=5 --nr=48 --heated=1 >> logfiles/sigma_vs_k_aw_Gr_1000_Pr_1_eta_0.6_mu_-1_m_-1.log```
* ```mpirun -np 8 python3 tc_r_heat_aw_stability.py --Pr=1 --eta=0.6 --Gr=1000 --mu=-1  --m=-1 --Ta_range='16000, 18500' --kz_range='4, 10' --nr=64 --nTa=40 --nkz=40 --heated=1 >> logfiles/neutral_stab_aw_Gr_1000_Pr_1_eta_0.6_mu_-1_m_-1.log```
* ```python3 tc_r_heat_aw_eigenvalue_3d.py --Pr=1 --eta=0.6 --Gr=1000 --mu=-1 --m=-1 --Ta=17777.55 --k=6.15273 --nr=96 --heated=1 >> logfiles/neutral_stab_aw_Gr_1000_Pr_1_eta_0.6_mu_-1_m_-1.log```



### $\eta = 0.6, \mu = -1, m = -2, Gr = 1000$
* ```python3 sigma_vs_k_tc_r_heat_aw.py --Pr=1 --eta=0.6 --Gr=1000 --mu=-1  --m=-2 --Ta_range='12500, 25000' --kz_range='0.1, 15' --nTa=5 --nr=48 --heated=1 >> logfiles/sigma_vs_k_aw_Gr_1000_Pr_1_eta_0.6_mu_-1_m_-2.log```
* ```mpirun -np 8 python3 tc_r_heat_aw_stability.py --Pr=1 --eta=0.6 --Gr=1000 --mu=-1  --m=-2 --Ta_range='17000, 19000' --kz_range='2, 7' --nr=64 --nTa=40 --nkz=40 --heated=1 >> logfiles/neutral_stab_aw_Gr_1000_Pr_1_eta_0.6_mu_-1_m_-2.log```
* ```python3 tc_r_heat_aw_eigenvalue_3d.py --Pr=1 --eta=0.6 --Gr=1000 --mu=-1 --m=-2 --Ta= --k= --nr=96 --heated=1 >> logfiles/neutral_stab_aw_Gr_1000_Pr_1_eta_0.6_mu_-1_m_-2.log```


### $\eta = 0.6, \mu = -1, m = -3, Gr = 1000$
* ```python3 sigma_vs_k_tc_r_heat_aw.py --Pr=1 --eta=0.6 --Gr=1000 --mu=-1  --m=-3 --Ta_range='12500, 25000' --kz_range='0.1, 15' --nTa=5 --nr=48 --heated=1 >> logfiles/sigma_vs_k_aw_Gr_1000_Pr_1_eta_0.6_mu_-1_m_-3.log```
* ```mpirun -np 8 python3 tc_r_heat_aw_stability.py --Pr=1 --eta=0.6 --Gr=1000 --mu=-1  --m=-3 --Ta_range='22000, 25000' --kz_range='3, 9' --nr=64 --nTa=40 --nkz=40 --heated=1 >> logfiles/neutral_stab_aw_Gr_1000_Pr_1_eta_0.6_mu_-1_m_-3.log```
* ```python3 tc_r_heat_aw_eigenvalue_3d.py --Pr=1 --eta=0.6 --Gr=1000 --mu=-1 --m=-3 --Ta=23060.40 --k=5.93754 --nr=96 --heated=1 >> logfiles/neutral_stab_aw_Gr_1000_Pr_1_eta_0.6_mu_-1_m_-3.log```

### $\eta = 0.6, \mu = -1, m = -4, Gr = 1000$
* ```python3 sigma_vs_k_tc_r_heat_aw.py --Pr=1 --eta=0.6 --Gr=1000 --mu=-1  --m=-4 --Ta_range='50000, 75000' --kz_range='0.1, 15' --nTa=5 --nr=48 --heated=1 >> logfiles/sigma_vs_k_aw_Gr_1000_Pr_1_eta_0.6_mu_-1_m_-4.log```
* ```mpirun -np 8 python3 tc_r_heat_aw_stability.py --Pr=1 --eta=0.6 --Gr=1000 --mu=-1  --m=-4 --Ta_range='63000, 68000' --kz_range='7, 11' --nr=64 --nTa=40 --nkz=40 --heated=1 >> logfiles/neutral_stab_aw_Gr_1000_Pr_1_eta_0.6_mu_-1_m_-4.log```
* ```python3 tc_r_heat_aw_eigenvalue_3d.py --Pr=1 --eta=0.6 --Gr=1000 --mu=-1 --m=-4 --Ta=65008.09 --k=8.90678 --nr=96 --heated=1 >> logfiles/neutral_stab_aw_Gr_1000_Pr_1_eta_0.6_mu_-1_m_-4.log```


------------------------------
### $\eta = 0.6, \mu = -0.5, m = 0, Gr = 1000$
* ```python3 sigma_vs_k_tc_r_heat_aw.py --Pr=1 --eta=0.6 --Gr=1000 --mu=-0.5 --m=0 --Ta_range='1000, 10000' --kz_range='0.1, 15' --nTa=5 --nr=48 --heated=1 >> logfiles/sigma_vs_k_aw_Gr_1000_Pr_1_eta_0.6_mu_-0.5_m_0.log```
* ```mpirun -np 8 python3 tc_r_heat_aw_stability.py --Pr=1 --eta=0.6 --mu=-0.5 --Gr=1000 --m=0 --Ta_range='4000, 5500' --kz_range='1, 5' --nr=64 --nTa=40 --nkz=40 --heated=1 >> logfiles/neutral_stab_aw_Gr_1000_Pr_1_eta_0.6_mu_-0.5_m_0.log```
* ```python3 tc_r_heat_aw_eigenvalue_3d.py --Pr=1 --eta=0.6 --mu=-0.5 --Gr=1000 --m=0 --Ta=5135.82 --k=3.88670 --nr=96 --heated=1 >> logfiles/neutral_stab_aw_Gr_1000_Pr_1_eta_0.6_mu_-0.5_m_0.log```


### $\eta = 0.6, \mu = -0.5, m = -1, Gr = 1000$
* ```python3 sigma_vs_k_tc_r_heat_aw.py --Pr=1 --eta=0.6 --Gr=1000 --mu=-0.5 --m=-1 --Ta_range='1000, 10000' --kz_range='0.1, 15' --nTa=5 --nr=48 --heated=1 >> logfiles/sigma_vs_k_aw_Gr_1000_Pr_1_eta_0.6_mu_-0.5_m_-1.log```
* ```mpirun -np 8 python3 tc_r_heat_aw_stability.py --Pr=1 --eta=0.6 --Gr=1000 --mu=-0.5  --m=-1 --Ta_range='5500, 6500' --kz_range='1, 7' --nr=64 --nTa=40 --nkz=40 --heated=1 >> logfiles/neutral_stab_aw_Gr_1000_Pr_1_eta_0.6_mu_-0.5_m_-1.log```
* ```python3 tc_r_heat_aw_eigenvalue_3d.py --Pr=1 --eta=0.6 --Gr=1000 --mu=-0.5 --m=-1 --Ta=5701.57 --k=4.05867 --nr=96 --heated=1 >> logfiles/neutral_stab_aw_Gr_1000_Pr_1_eta_0.6_mu_-0.5_m_-1.log```



### $\eta = 0.6, \mu = -0.5, m = -2, Gr = 1000$
* ```python3 sigma_vs_k_tc_r_heat_aw.py --Pr=1 --eta=0.6 --Gr=1000 --mu=-0.5 --m=-2 --Ta_range='1000, 10000' --kz_range='0.1, 15' --nTa=5 --nr=48 --heated=1 >> logfiles/sigma_vs_k_aw_Gr_1000_Pr_1_eta_0.6_mu_-0.5_m_-2.log```
* ```mpirun -np 8 python3 tc_r_heat_aw_stability.py --Pr=1 --eta=0.6 --Gr=1000 --mu=-0.5  --m=-2 --Ta_range='5500, 7000' --kz_range='2, 7' --nr=64 --nTa=40 --nkz=40 --heated=1 >> logfiles/neutral_stab_aw_Gr_1000_Pr_1_eta_0.6_mu_-0.5_m_-2.log```
* ```python3 tc_r_heat_aw_eigenvalue_3d.py --Pr=1 --eta=0.6 --Gr=1000 --mu=-0.5 --m=-2 --Ta=5875.06 --k=3.69844 --nr=96 --heated=1 >> logfiles/neutral_stab_aw_Gr_1000_Pr_1_eta_0.6_mu_-0.5_m_-2.log```


### $\eta = 0.6, \mu = -0.5, m = -3, Gr = 1000$
* ```python3 sigma_vs_k_tc_r_heat_aw.py --Pr=1 --eta=0.6 --Gr=1000 --mu=-0.5  --m=-3 --Ta_range='1000, 10000' --kz_range='0.1, 15' --nTa=5 --nr=48 --heated=1 >> logfiles/sigma_vs_k_aw_Gr_1000_Pr_1_eta_0.6_mu_-0.5_m_-3.log```
* ```mpirun -np 8 python3 tc_r_heat_aw_stability.py --Pr=1 --eta=0.6 --Gr=1000 --mu=-0.5  --m=-3 --Ta_range='9000, 11000' --kz_range='2, 7' --nr=64 --nTa=40 --nkz=40 --heated=1 >> logfiles/neutral_stab_aw_Gr_1000_Pr_1_eta_0.6_mu_-0.5_m_-3.log```
* ```python3 tc_r_heat_aw_eigenvalue_3d.py --Pr=1 --eta=0.6 --Gr=1000 --mu=-0.5 --m=-3 --Ta=9814.35 --k=4.89194 --nr=96 --heated=1 >> logfiles/neutral_stab_aw_Gr_1000_Pr_1_eta_0.6_mu_-0.5_m_-3.log```

### $\eta = 0.6, \mu = -0.5, m = -4, Gr = 1000$
* ```python3 sigma_vs_k_tc_r_heat_aw.py --Pr=1 --eta=0.6 --Gr=1000 --mu=-0.5  --m=-4 --Ta_range='50000, 60000' --kz_range='0.1, 15' --nTa=5 --nr=48 --heated=1 >> logfiles/sigma_vs_k_aw_Gr_1000_Pr_1_eta_0.6_mu_-0.5_m_-4.log```
* ```mpirun -np 8 python3 tc_r_heat_aw_stability.py --Pr=1 --eta=0.6 --Gr=1000 --mu=-0.5  --m=-4 --Ta_range='50000, 52000' --kz_range='6, 11' --nr=64 --nTa=40 --nkz=40 --heated=1 >> logfiles/neutral_stab_aw_Gr_1000_Pr_1_eta_0.6_mu_-0.5_m_-4.log```
* ```python3 tc_r_heat_aw_eigenvalue_3d.py --Pr=1 --eta=0.6 --Gr=1000 --mu=-0.5 --m=-4 --Ta=50694.13 --k=7.84844 --nr=96 --heated=1 >> logfiles/neutral_stab_aw_Gr_1000_Pr_1_eta_0.6_mu_-0.5_m_-4.log```

------------------------------
### $\eta = 0.6, \mu = -0.2, m = 0, Gr = 1000$
* ```python3 sigma_vs_k_tc_r_heat_aw.py --Pr=1 --eta=0.6 --Gr=1000 --mu=-0.2 --m=0 --Ta_range='1000, 10000' --kz_range='0.1, 15' --nTa=5 --nr=48 --heated=1 >> logfiles/sigma_vs_k_aw_Gr_1000_Pr_1_eta_0.6_mu_-0.2_m_0.log```
* ```mpirun -np 8 python3 tc_r_heat_aw_stability.py --Pr=1 --eta=0.6 --Gr=1000 --mu=-0.2 --m=0 --Ta_range='3000, 4000' --kz_range='0.1, 5' --nr=64 --nTa=40 --nkz=40 --heated=1 >> logfiles/neutral_stab_aw_Gr_1000_Pr_1_eta_0.6_mu_-0.2_m_0.log```
* ```python3 tc_r_heat_aw_eigenvalue_3d.py --Pr=1 --eta=0.6 --mu=-0.2 --Gr=1000 --m=0 --Ta=3287.03 --k=3.20385 --nr=96 --heated=1 >> logfiles/neutral_stab_aw_Gr_1000_Pr_1_eta_0.6_mu_-0.2_m_0.log```


### $\eta = 0.6, \mu = -0.2, m = -1, Gr = 1000$
* ```python3 sigma_vs_k_tc_r_heat_aw.py --Pr=1 --eta=0.6 --Gr=1000 --mu=-0.2 --m=-1 --Ta_range='1000, 10000' --kz_range='0.1, 15' --nTa=5 --nr=48 --heated=1 >> logfiles/sigma_vs_k_aw_Gr_1000_Pr_1_eta_0.6_mu_-0.2_m_-1.log```
* ```mpirun -np 8 python3 tc_r_heat_aw_stability.py --Pr=1 --eta=0.6 --Gr=1000 --mu=-0.2 --m=-1 --Ta_range='1500, 3250' --kz_range='0.1, 6' --nr=64 --nTa=40 --nkz=40 --heated=1 >> logfiles/neutral_stab_aw_Gr_1000_Pr_1_eta_0.6_mu_-0.2_m_-1.log```
* ```python3 tc_r_heat_aw_eigenvalue_3d.py --Pr=1 --eta=0.6 --Gr=1000 --mu=-0.2 --m=-1 --Ta=2497.022945414121 --k=2.80735 --nr=96 --heated=1 >> logfiles/neutral_stab_aw_Gr_1000_Pr_1_eta_0.6_mu_-0.2_m_-1.log```



### $\eta = 0.6, \mu = -0.2, m = -2, Gr = 1000$
* ```python3 sigma_vs_k_tc_r_heat_aw.py --Pr=1 --eta=0.6 --Gr=1000 --mu=-0.2 --m=-2 --Ta_range='1000, 10000' --kz_range='0.1, 15' --nTa=5 --nr=48 --heated=1 >> logfiles/sigma_vs_k_aw_Gr_1000_Pr_1_eta_0.6_mu_-0.2_m_-2.log```
* ```mpirun -np 8 python3 tc_r_heat_aw_stability.py --Pr=1 --eta=0.6 --Gr=1000 --mu=-0.2 --m=-2 --Ta_range='1500, 3250' --kz_range='0.1, 6' --nr=64 --nTa=40 --nkz=40 --heated=1 >> logfiles/neutral_stab_aw_Gr_1000_Pr_1_eta_0.6_mu_-0.2_m_-2.log```
* ```python3 tc_r_heat_aw_eigenvalue_3d.py --Pr=1 --eta=0.6 --Gr=1000 --mu=-0.2 --m=-2 --Ta=2292.02 --k=2.87532 --nr=96 --heated=1 >> logfiles/neutral_stab_aw_Gr_1000_Pr_1_eta_0.6_mu_-0.2_m_-2.log```


### $\eta = 0.6, \mu = -0.2, m = -3, Gr = 1000$
* ```python3 sigma_vs_k_tc_r_heat_aw.py --Pr=1 --eta=0.6 --Gr=1000 --mu=-0.2  --m=-3 --Ta_range='1000, 10000' --kz_range='0.1, 15' --nTa=5 --nr=48 --heated=1 >> logfiles/sigma_vs_k_aw_Gr_1000_Pr_1_eta_0.6_mu_-0.2_m_-3.log```
* ```mpirun -np 8 python3 tc_r_heat_aw_stability.py --Pr=1 --eta=0.6 --Gr=1000 --mu=-0.2 --m=-3 --Ta_range='3000, 4000' --kz_range='1, 6' --nr=64 --nTa=40 --nkz=40 --heated=1 >> logfiles/neutral_stab_aw_Gr_1000_Pr_1_eta_0.6_mu_-0.2_m_-3.log```
* ```python3 tc_r_heat_aw_eigenvalue_3d.py --Pr=1 --eta=0.6 --Gr=1000 --mu=-0.2 --m=-3 --Ta=3338.6001779291482 --k=3.6463533566721695 --nr=96 --heated=1 >> logfiles/neutral_stab_aw_Gr_1000_Pr_1_eta_0.6_mu_-0.2_m_-3.log```

### $\eta = 0.6, \mu = -0.2, m = -4, Gr = 1000$
* ```python3 sigma_vs_k_tc_r_heat_aw.py --Pr=1 --eta=0.6 --Gr=1000 --mu=-0.2  --m=-4 --Ta_range='50000, 60000' --kz_range='0.1, 15' --nTa=5 --nr=48 --heated=1 >> logfiles/sigma_vs_k_aw_Gr_1000_Pr_1_eta_0.6_mu_-0.2_m_-4.log```
* ```mpirun -np 8 python3 tc_r_heat_aw_stability.py --Pr=1 --eta=0.6 --Gr=1000 --mu=-0.2 --m=-4 --Ta_range='50000, 60000' --kz_range='5, 10' --nr=64 --nTa=40 --nkz=40 --heated=1 >> logfiles/neutral_stab_aw_Gr_1000_Pr_1_eta_0.6_mu_-0.2_m_-4.log```
* ```python3 tc_r_heat_aw_eigenvalue_3d.py --Pr=1 --eta=0.6 --Gr=1000 --mu=-0.2 --m=-4 --Ta=53308.15442520162 --k=7.4272007909530595 --nr=96 --heated=1 >> logfiles/neutral_stab_aw_Gr_1000_Pr_1_eta_0.6_mu_-0.2_m_-4.log```
------------------------------
### $\eta = 0.6, \mu = 0, m = 0, Gr = 1000$
* ```python3 sigma_vs_k_tc_r_heat_aw.py --Pr=1 --eta=0.6 --Gr=1000 --mu=0 --m=0 --Ta_range='1000, 10000' --kz_range='0.1, 15' --nTa=5 --nr=48 --heated=1 >> logfiles/sigma_vs_k_aw_Gr_1000_Pr_1_eta_0.6_mu_0_m_0.log```
* ```mpirun -np 8 python3 tc_r_heat_aw_stability.py --Pr=1 --eta=0.6 --Gr=1000 --mu=0 --m=0 --Ta_range='3200, 3600' --kz_range='0.1, 6' --nr=64 --nTa=40 --nkz=40 --heated=1 >> logfiles/neutral_stab_aw_Gr_1000_Pr_1_eta_0.6_mu_0_m_0.log```
* ```python3 tc_r_heat_aw_eigenvalue_3d.py --Pr=1 --eta=0.6 --mu=0 --Gr=1000 --m=0 --Ta=3413.101229322155 --k=3.058189436276208 --nr=96 --heated=1 >> logfiles/neutral_stab_aw_Gr_1000_Pr_1_eta_0.6_mu_0_m_0.log```


### $\eta = 0.6, \mu = 0, m = -1, Gr = 1000$
* ```python3 sigma_vs_k_tc_r_heat_aw.py --Pr=1 --eta=0.6 --Gr=1000 --mu=0 --m=-1 --Ta_range='1000, 10000' --kz_range='0.1, 15' --nTa=5 --nr=48 --heated=1 >> logfiles/sigma_vs_k_aw_Gr_1000_Pr_1_eta_0.6_mu_0_m_-1.log```
* ```mpirun -np 8 python3 tc_r_heat_aw_stability.py --Pr=1 --eta=0.6 --Gr=1000 --mu=0 --m=-1 --Ta_range='1000, 3200' --kz_range='0.1, 5' --nr=64 --nTa=40 --nkz=40 --heated=1 >> logfiles/neutral_stab_aw_Gr_1000_Pr_1_eta_0.6_mu_0_m_-1.log```
* ```python3 tc_r_heat_aw_eigenvalue_3d.py --Pr=1 --eta=0.6 --Gr=1000 --mu=0 --m=-1 --Ta=2279.479529722803 --k=2.523909218385474 --nr=96 --heated=1 >> logfiles/neutral_stab_aw_Gr_1000_Pr_1_eta_0.6_mu_0_m_-1.log```



### $\eta = 0.6, \mu = 0, m = -2, Gr = 1000$
* ```python3 sigma_vs_k_tc_r_heat_aw.py --Pr=1 --eta=0.6 --Gr=1000 --mu=0 --m=-2 --Ta_range='1000, 15000' --kz_range='0.1, 15' --nTa=5 --nr=48 --heated=1 >> logfiles/sigma_vs_k_aw_Gr_1000_Pr_1_eta_0.6_mu_0_m_-2.log```
* ```mpirun -np 8 python3 tc_r_heat_aw_stability.py --Pr=1 --eta=0.6 --Gr=1000 --mu=0 --m=-2 --Ta_range='1500, 3500' --kz_range='0.1, 6' --nr=64 --nTa=40 --nkz=40 --heated=1 >> logfiles/neutral_stab_aw_Gr_1000_Pr_1_eta_0.6_mu_0_m_-2.log```
* ```python3 tc_r_heat_aw_eigenvalue_3d.py --Pr=1 --eta=0.6 --Gr=1000 --mu=0 --m=-2 --Ta=1750.8915942112124 --k=2.4077547343852066 --nr=96 --heated=1 >> logfiles/neutral_stab_aw_Gr_1000_Pr_1_eta_0.6_mu_0_m_-2.log```


### $\eta = 0.6, \mu = 0, m = -3, Gr = 1000$
* ```python3 sigma_vs_k_tc_r_heat_aw.py --Pr=1 --eta=0.6 --Gr=1000 --mu=0  --m=-3 --Ta_range='1000, 15000' --kz_range='0.1, 15' --nTa=5 --nr=48 --heated=1 >> logfiles/sigma_vs_k_aw_Gr_1000_Pr_1_eta_0.6_mu_0_m_-3.log```
* ```mpirun -np 8 python3 tc_r_heat_aw_stability.py --Pr=1 --eta=0.6 --Gr=1000 --mu=0 --m=-3 --Ta_range='1500, 4000' --kz_range='0.1, 6' --nr=64 --nTa=40 --nkz=40 --heated=1 >> logfiles/neutral_stab_aw_Gr_1000_Pr_1_eta_0.6_mu_0_m_-3.log```
* ```python3 tc_r_heat_aw_eigenvalue_3d.py --Pr=1 --eta=0.6 --Gr=1000 --mu=0 --m=-3 --Ta=1863.5730894910346 --k=2.75454 --nr=96 --heated=1 >> logfiles/neutral_stab_aw_Gr_1000_Pr_1_eta_0.6_mu_0_m_-3.log```

### $\eta = 0.6, \mu = 0, m = -4, Gr = 1000$
* ```python3 sigma_vs_k_tc_r_heat_aw.py --Pr=1 --eta=0.6 --Gr=1000 --mu=0  --m=-4 --Ta_range='1000, 60000' --kz_range='0.1, 15' --nTa=5 --nr=48 --heated=1 >> logfiles/sigma_vs_k_aw_Gr_1000_Pr_1_eta_0.6_mu_0_m_-4.log```
* ```mpirun -np 8 python3 tc_r_heat_aw_stability.py --Pr=1 --eta=0.6 --Gr=1000 --mu=0 --m=-4 --Ta_range='82000, 90000' --kz_range='5, 10' --nr=64 --nTa=40 --nkz=40 --heated=1 >> logfiles/neutral_stab_aw_Gr_1000_Pr_1_eta_0.6_mu_0_m_-4.log```
* ```python3 tc_r_heat_aw_eigenvalue_3d.py --Pr=1 --eta=0.6 --Gr=1000 --mu=0 --m=-4 --Ta=83726.12983060142  --k=7.67887693326138 --nr=96 --heated=1 >> logfiles/neutral_stab_aw_Gr_1000_Pr_1_eta_0.6_mu_0_m_-4.log```

------------------------------
### $\eta = 0.6, \mu = 0.2, m = 0, Gr = 1000$
* ```python3 sigma_vs_k_tc_r_heat_aw.py --Pr=1 --eta=0.6 --Gr=1000 --mu=0.2 --m=0 --Ta_range='1000, 10000' --kz_range='0.1, 15' --nTa=5 --nr=48 --heated=1 >> logfiles/sigma_vs_k_aw_Gr_1000_Pr_1_eta_0.6_mu_0.2_m_0.log```
* ```mpirun -np 8 python3 tc_r_heat_aw_stability.py --Pr=1 --eta=0.6 --Gr=1000 --mu=0.2 --m=0 --Ta_range='5500, 7000' --kz_range='0.1, 5' --nr=64 --nTa=40 --nkz=40 --heated=1 >> logfiles/neutral_stab_aw_Gr_1000_Pr_1_eta_0.6_mu_0.2_m_0.log```
* ```python3 tc_r_heat_aw_eigenvalue_3d.py --Pr=1 --eta=0.6 --Gr=1000 --mu=0.2 --m=0 --Ta=5655.643251602192 --k=3.0081172283878996 --nr=96 --heated=1 >> logfiles/neutral_stab_aw_Gr_1000_Pr_1_eta_0.6_mu_0.2_m_0.log```

### $\eta = 0.6, \mu = 0.2, m = -1, Gr = 1000$
* ```python3 sigma_vs_k_tc_r_heat_aw.py --Pr=1 --eta=0.6 --Gr=1000 --mu=0.2 --m=-1 --Ta_range='1000, 10000' --kz_range='0.1, 15' --nTa=5 --nr=48 --heated=1 >> logfiles/sigma_vs_k_aw_Gr_1000_Pr_1_eta_0.6_mu_0.2_m_-1.log```
* ```mpirun -np 8 python3 tc_r_heat_aw_stability.py --Pr=1 --eta=0.6 --Gr=1000 --mu=0.2 --m=-1 --Ta_range='1500, 3300' --kz_range='0.1, 5' --nr=64 --nTa=40 --nkz=40 --heated=1 >> logfiles/neutral_stab_aw_Gr_1000_Pr_1_eta_0.6_mu_0.2_m_-1.log```
* ```python3 tc_r_heat_aw_eigenvalue_3d.py --Pr=1 --eta=0.6 --Gr=1000 --mu=0.2 --m=-1 --Ta=2971.2575296247114 --k=2.161114819487825 --nr=96 --heated=1 >> logfiles/neutral_stab_aw_Gr_1000_Pr_1_eta_0.6_mu_0.2_m_-1.log```



### $\eta = 0.6, \mu = 0.2, m = -2, Gr = 1000$
* ```python3 sigma_vs_k_tc_r_heat_aw.py --Pr=1 --eta=0.6 --Gr=1000 --mu=0.2 --m=-2 --Ta_range='1000, 10000' --kz_range='0.1, 15' --nTa=5 --nr=48 --heated=1 >> logfiles/sigma_vs_k_aw_Gr_1000_Pr_1_eta_0.6_mu_0.2_m_-2.log```
* ```mpirun -np 8 python3 tc_r_heat_aw_stability.py --Pr=1 --eta=0.6 --Gr=1000 --mu=0.2 --m=-2 --Ta_range='1500, 3300' --kz_range='0.1, 5' --nr=64 --nTa=40 --nkz=40 --heated=1 >> logfiles/neutral_stab_aw_Gr_1000_Pr_1_eta_0.6_mu_0.2_m_-2.log```
* ```python3 tc_r_heat_aw_eigenvalue_3d.py --Pr=1 --eta=0.6 --Gr=1000 --mu=0.2 --m=-2 --Ta=1781.5393967930345 --k=1.99981932337627 --nr=96 --heated=1 >> logfiles/neutral_stab_aw_Gr_1000_Pr_1_eta_0.6_mu_0.2_m_-2.log```


### $\eta = 0.6, \mu = 0.2, m = -3, Gr = 1000$
* ```python3 sigma_vs_k_tc_r_heat_aw.py --Pr=1 --eta=0.6 --Gr=1000 --mu=0.2  --m=-3 --Ta_range='1000, 10000' --kz_range='0.1, 15' --nTa=5 --nr=48 --heated=1 >> logfiles/sigma_vs_k_aw_Gr_1000_Pr_1_eta_0.6_mu_0.2_m_-3.log```
* ```mpirun -np 8 python3 tc_r_heat_aw_stability.py --Pr=1 --eta=0.6 --Gr=1000 --mu=0.2 --m=-3 --Ta_range='1000, 3200' --kz_range='0.1, 6' --nr=64 --nTa=40 --nkz=40 --heated=1 >> logfiles/neutral_stab_aw_Gr_1000_Pr_1_eta_0.6_mu_0.2_m_-3.log```
* ```python3 tc_r_heat_aw_eigenvalue_3d.py --Pr=1 --eta=0.6 --Gr=1000 --mu=0.2 --m=-3 --Ta=1541.3449572846273 --k=2.183621330421911 --nr=96 --heated=1 >> logfiles/neutral_stab_aw_Gr_1000_Pr_1_eta_0.6_mu_0.2_m_-3.log```

### $\eta = 0.6, \mu = 0.2, m = -4, Gr = 1000$
* ```python3 sigma_vs_k_tc_r_heat_aw.py --Pr=1 --eta=0.6 --Gr=1000 --mu=0.2  --m=-4 --Ta_range='100000, 300000' --kz_range='0.1, 15' --nTa=5 --nr=48 --heated=1 >> logfiles/sigma_vs_k_aw_Gr_1000_Pr_1_eta_0.6_mu_0.2_m_-4.log```
* ```mpirun -np 8 python3 tc_r_heat_aw_stability.py --Pr=1 --eta=0.6 --Gr=1000 --mu=0.2 --m=-4 --Ta_range='130000, 150000' --kz_range='5, 10' --nr=64 --nTa=40 --nkz=40 --heated=1 >> logfiles/neutral_stab_aw_Gr_1000_Pr_1_eta_0.6_mu_0.2_m_-4.log```
* ```python3 tc_r_heat_aw_eigenvalue_3d.py --Pr=1 --eta=0.6 --Gr=1000 --mu=0.2 --m=-4 --Ta=142487.28406168008 --k=6.4330160140147505 --nr=96 --heated=1 >> logfiles/neutral_stab_aw_Gr_1000_Pr_1_eta_0.6_mu_0.2_m_-4.log```


------------------------------
### $\eta = 0.6, \mu = 0.5, m = 0, Gr = 1000$
* ```python3 sigma_vs_k_tc_r_heat_aw.py --Pr=1 --eta=0.6 --Gr=1000 --mu=0.5 --m=0 --Ta_range='10, 10000' --kz_range='0.1, 15' --nTa=5 --nr=48 --heated=1 >> logfiles/sigma_vs_k_aw_Gr_1000_Pr_1_eta_0.6_mu_0.5_m_0.log```
* ```mpirun -np 8 python3 tc_r_heat_aw_stability.py --Pr=1 --eta=0.6 --Gr=1000 --mu=0.5 --m=0 --Ta_range='4000, 5500' --kz_range='1, 5' --nr=64 --nTa=40 --nkz=40 --heated=1 >> logfiles/neutral_stab_aw_Gr_1000_Pr_1_eta_0.6_mu_0.5_m_0.log```
* ```python3 tc_r_heat_aw_eigenvalue_3d.py --Pr=1 --eta=0.6 --mu=0.5 --Gr=1000 --m=0 --Ta= --k= --nr=96 --heated=1 >> logfiles/neutral_stab_aw_Gr_1000_Pr_1_eta_0.6_mu_0.5_m_0.log```


### $\eta = 0.6, \mu = 0.5, m = -1, Gr = 1000$
* ```python3 sigma_vs_k_tc_r_heat_aw.py --Pr=1 --eta=0.6 --Gr=1000 --mu=0.5 --m=-1 --Ta_range='10, 10000' --kz_range='0.1, 15' --nTa=5 --nr=48 --heated=1 >> logfiles/sigma_vs_k_aw_Gr_1000_Pr_1_eta_0.6_mu_0.5_m_-1.log```
* ```mpirun -np 8 python3 tc_r_heat_aw_stability.py --Pr=1 --eta=0.6 --Gr=1000 --mu=0.5 --m=-1 --Ta_range='5500, 6500' --kz_range='1, 7' --nr=64 --nTa=40 --nkz=40 --heated=1 >> logfiles/neutral_stab_aw_Gr_1000_Pr_1_eta_0.6_mu_0.5_m_-1.log```
* ```python3 tc_r_heat_aw_eigenvalue_3d.py --Pr=1 --eta=0.6 --Gr=1000 --mu=0.5 --m=-1 --Ta= --k= --nr=96 --heated=1 >> logfiles/neutral_stab_aw_Gr_1000_Pr_1_eta_0.6_mu_0.5_m_-1.log```



### $\eta = 0.6, \mu = 0.5, m = -2, Gr = 1000$
* ```python3 sigma_vs_k_tc_r_heat_aw.py --Pr=1 --eta=0.6 --Gr=1000 --mu=0.5 --m=-2 --Ta_range='10, 10000' --kz_range='0.1, 15' --nTa=5 --nr=48 --heated=1 >> logfiles/sigma_vs_k_aw_Gr_1000_Pr_1_eta_0.6_mu_0.5_m_-2.log```
* ```mpirun -np 8 python3 tc_r_heat_aw_stability.py --Pr=1 --eta=0.6 --Gr=1000 --mu=0.5 --m=-2 --Ta_range=', ' --kz_range=', ' --nr=64 --nTa=40 --nkz=40 --heated=1 >> logfiles/neutral_stab_aw_Gr_1000_Pr_1_eta_0.6_mu_0.5_m_-2.log```
* ```python3 tc_r_heat_aw_eigenvalue_3d.py --Pr=1 --eta=0.6 --Gr=1000 --mu=0.5 --m=-2 --Ta= --k= --nr=96 --heated=1 >> logfiles/neutral_stab_aw_Gr_1000_Pr_1_eta_0.6_mu_0.5_m_-2.log```


### $\eta = 0.6, \mu = 0.5, m = -3, Gr = 1000$
* ```python3 sigma_vs_k_tc_r_heat_aw.py --Pr=1 --eta=0.6 --Gr=1000 --mu=0.5  --m=-3 --Ta_range='10, 10000' --kz_range='0.1, 15' --nTa=5 --nr=48 --heated=1 >> logfiles/sigma_vs_k_aw_Gr_1000_Pr_1_eta_0.6_mu_0.5_m_-3.log```
* ```mpirun -np 8 python3 tc_r_heat_aw_stability.py --Pr=1 --eta=0.6 --Gr=1000 --mu=0.5 --m=-3 --Ta_range='1000, 7000' --kz_range='1, 2.5' --nr=64 --nTa=40 --nkz=40 --heated=1 >> logfiles/neutral_stab_aw_Gr_1000_Pr_1_eta_0.6_mu_0.5_m_-3.log```
* ```python3 tc_r_heat_aw_eigenvalue_3d.py --Pr=1 --eta=0.6 --Gr=1000 --mu=0.5 --m=-3 --Ta=1706.8472168508629 --k=1.5080179919085506 --nr=96 --heated=1 >> logfiles/neutral_stab_aw_Gr_1000_Pr_1_eta_0.6_mu_0.5_m_-3.log```

### $\eta = 0.6, \mu = 0.5, m = -4, Gr = 1000$
* ```python3 sigma_vs_k_tc_r_heat_aw.py --Pr=1 --eta=0.6 --Gr=1000 --mu=0.5  --m=-4 --Ta_range='10, 10000' --kz_range='0.1, 15' --nTa=5 --nr=48 --heated=1 >> logfiles/sigma_vs_k_aw_Gr_1000_Pr_1_eta_0.6_mu_0.5_m_-4.log```
* ```mpirun -np 8 python3 tc_r_heat_aw_stability.py --Pr=1 --eta=0.6 --Gr=1000 --mu=0.5 --m=-4 --Ta_range='1, 7000' --kz_range='0.1, 5' --nr=64 --nTa=40 --nkz=40 --heated=1 >> logfiles/neutral_stab_aw_Gr_1000_Pr_1_eta_0.6_mu_0.5_m_-4.log```
* ```python3 tc_r_heat_aw_eigenvalue_3d.py --Pr=1 --eta=0.6 --Gr=1000 --mu=0.5 --m=-4 --Ta=1714.98 --k=1.72996 --nr=96 --heated=1 >> logfiles/neutral_stab_aw_Gr_1000_Pr_1_eta_0.6_mu_0.5_m_-4.log```
------------------------------

------------------------------
### $\eta = 0.6, \mu = 1, m = 0, Gr = 1000$
* ```python3 sigma_vs_k_tc_r_heat_aw.py --Pr=1 --eta=0.6 --Gr=1000 --mu=1 --m=0 --Ta_range='10, 10000' --kz_range='0.1, 15' --nTa=5 --nr=48 --heated=1 >> logfiles/sigma_vs_k_aw_Gr_1000_Pr_1_eta_0.6_mu_1_m_0.log```
* ```mpirun -np 8 python3 tc_r_heat_aw_stability.py --Pr=1 --eta=0.6 --Gr=1000 --mu=1 --m=0 --Ta_range='4000, 5500' --kz_range='1, 5' --nr=64 --nTa=40 --nkz=40 --heated=1 >> logfiles/neutral_stab_aw_Gr_1000_Pr_1_eta_0.6_mu_1_m_0.log```
* ```python3 tc_r_heat_aw_eigenvalue_3d.py --Pr=1 --eta=0.6 --mu=1 --Gr=1000 --m=0 --Ta= --k= --nr=96 --heated=1 >> logfiles/neutral_stab_aw_Gr_1000_Pr_1_eta_0.6_mu_1_m_0.log```


### $\eta = 0.6, \mu = 1, m = -1, Gr = 1000$
* ```python3 sigma_vs_k_tc_r_heat_aw.py --Pr=1 --eta=0.6 --Gr=1000 --mu=1 --m=-1 --Ta_range='10, 10000' --kz_range='0.1, 15' --nTa=5 --nr=48 --heated=1 >> logfiles/sigma_vs_k_aw_Gr_1000_Pr_1_eta_0.6_mu_1_m_-1.log```
* ```mpirun -np 8 python3 tc_r_heat_aw_stability.py --Pr=1 --eta=0.6 --Gr=1000 --mu=1 --m=-1 --Ta_range='5500, 6500' --kz_range='1, 7' --nr=64 --nTa=40 --nkz=40 --heated=1 >> logfiles/neutral_stab_aw_Gr_1000_Pr_1_eta_0.6_mu_1_m_-1.log```
* ```python3 tc_r_heat_aw_eigenvalue_3d.py --Pr=1 --eta=0.6 --Gr=1000 --mu=1 --m=-1 --Ta= --k= --nr=96 --heated=1 >> logfiles/neutral_stab_aw_Gr_1000_Pr_1_eta_0.6_mu_1_m_-1.log```



### $\eta = 0.6, \mu = 1, m = -2, Gr = 1000$
* ```python3 sigma_vs_k_tc_r_heat_aw.py --Pr=1 --eta=0.6 --Gr=1000 --mu=1 --m=-2 --Ta_range='10, 10000' --kz_range='0.1, 15' --nTa=5 --nr=48 --heated=1 >> logfiles/sigma_vs_k_aw_Gr_1000_Pr_1_eta_0.6_mu_1_m_-2.log```
* ```mpirun -np 8 python3 tc_r_heat_aw_stability.py --Pr=1 --eta=0.6 --Gr=1000 --mu=1 --m=-2 --Ta_range=', ' --kz_range=', ' --nr=64 --nTa=40 --nkz=40 --heated=1 >> logfiles/neutral_stab_aw_Gr_1000_Pr_1_eta_0.6_mu_1_m_-2.log```
* ```python3 tc_r_heat_aw_eigenvalue_3d.py --Pr=1 --eta=0.6 --Gr=1000 --mu=1 --m=-2 --Ta= --k= --nr=96 --heated=1 >> logfiles/neutral_stab_aw_Gr_1000_Pr_1_eta_0.6_mu_1_m_-2.log```


### $\eta = 0.6, \mu = 1, m = -3, Gr = 1000$
* ```python3 sigma_vs_k_tc_r_heat_aw.py --Pr=1 --eta=0.6 --Gr=1000 --mu=1  --m=-3 --Ta_range='10, 10000' --kz_range='0.1, 15' --nTa=5 --nr=48 --heated=1 >> logfiles/sigma_vs_k_aw_Gr_1000_Pr_1_eta_0.6_mu_1_m_-3.log```
* ```mpirun -np 8 python3 tc_r_heat_aw_stability.py --Pr=1 --eta=0.6 --Gr=1000 --mu=1 --m=-3 --Ta_range='16000, 24000' --kz_range='0.01, 3' --nr=64 --nTa=40 --nkz=40 --heated=1 >> logfiles/neutral_stab_aw_Gr_1000_Pr_1_eta_0.6_mu_1_m_-3.log```
* ```python3 tc_r_heat_aw_eigenvalue_3d.py --Pr=1 --eta=0.6 --Gr=1000 --mu=1 --m=-3 --Ta= --k= --nr=96 --heated=1 >> logfiles/neutral_stab_aw_Gr_1000_Pr_1_eta_0.6_mu_1_m_-3.log```

### $\eta = 0.6, \mu = 1, m = -4, Gr = 1000$
* ```python3 sigma_vs_k_tc_r_heat_aw.py --Pr=1 --eta=0.6 --Gr=1000 --mu=1  --m=-4 --Ta_range='4000, 20000' --kz_range='0.01, 3' --nTa=5 --nr=48 --heated=1 >> logfiles/sigma_vs_k_aw_Gr_1000_Pr_1_eta_0.6_mu_1_m_-4.log```
* ```mpirun -np 8 python3 tc_r_heat_aw_stability.py --Pr=1 --eta=0.6 --Gr=1000 --mu=1 --m=-4 --Ta_range='4000, 20000' --kz_range='0.01, 3' --nr=64 --nTa=40 --nkz=40 --heated=1 >> logfiles/neutral_stab_aw_Gr_1000_Pr_1_eta_0.6_mu_1_m_-4.log```
* ```python3 tc_r_heat_aw_eigenvalue_3d.py --Pr=1 --eta=0.6 --Gr=1000 --mu=1 --m=-4 --Ta=6209.986904990039 --k=0.5695058435157576 --nr=96 --heated=1 >> logfiles/neutral_stab_aw_Gr_1000_Pr_1_eta_0.6_mu_1_m_-4.log```
------------------------------

## Jan. 29-31, 2023: Check if open neutral stability boundaries exist for $\mu = 0.5, m = -3, -4$.
* ```python3 sigma_vs_k_tc_r_heat_aw.py --Pr=1 --eta=0.6 --Gr=1000 --mu=0.5  --m=-3 --Ta_range='1e4, 1e5' --kz_range='0.1, 15' --nTa=5 --nkz=20 --nr=48 --heated=1 >> logfiles/sigma_vs_k_aw_Gr_1000_Pr_1_eta_0.6_mu_0.5_m_-3.log```
* ```python3 sigma_vs_k_tc_r_heat_aw.py --Pr=1 --eta=0.6 --Gr=1000 --mu=0.5  --m=-4 --Ta_range='1e4, 1e5' --kz_range='0.1, 15' --nTa=5 --nkz=20 --nr=48 --heated=1 >> logfiles/sigma_vs_k_aw_Gr_1000_Pr_1_eta_0.6_mu_0.5_m_-4.log```
* did not find anything. 

------------------------------

## Feb. 25-26, 2023: Check if closed neutral stability boundaries exist for $\mu = 0, Gr = 1000$.
### $\eta = 0.6, \mu = 0, m = -2, Gr = 1000$
* ```python3 sigma_vs_k_tc_r_heat_aw.py --Pr=1 --eta=0.6 --Gr=1000 --mu=0 --m=-2 --Ta_range='0, 2000' --kz_range='0.1, 3' --nTa=5 --nr=48 --heated=1 >> logfiles/sigma_vs_k_aw_c_mode_Gr_1000_Pr_1_eta_0.6_mu_0_m_-2.log```
* ```mpirun -np 8 python3 tc_r_heat_aw_stability_c_mode.py --Pr=1 --eta=0.6 --Gr=1000 --mu=0 --m=-2 --Ta_range='0, 2000' --kz_range='0.1, 3' --nr=64 --nTa=40 --nkz=40 --heated=1 >> logfiles/neutral_stab_aw_c_mode_Gr_1000_Pr_1_eta_0.6_mu_0_m_-2.log```






















