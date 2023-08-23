# plot critical eigenfunctions for different mu:
### default dir is crit_ef. I rename it after every run manually, because automatic dir_name did not work. 

* python3 tc_r_heat_aw_eigenvalue_3d.py --Pr=1 --eta=0.6 --Gr=1000 --mu=-1 --m=0 --Ta=17092.65 --k=6.23491 --nr=96 --heated=1 
--
* python3 tc_r_heat_aw_eigenvalue_3d.py --Pr=1 --eta=0.6 --mu=-0.5 --Gr=1000 --m=0 --Ta=5135.82 --k=3.88670 --nr=96 --heated=1 

--
* python3 tc_r_heat_aw_eigenvalue_3d.py --Pr=1 --eta=0.6 --Gr=1000 --mu=-0.2 --m=-2 --Ta=2292.02 --k=2.87532 --nr=96 --heated=1 

--
* python3 tc_r_heat_aw_eigenvalue_3d.py --Pr=1 --eta=0.6 --Gr=1000 --mu=0 --m=-2 --Ta=1750.8915942112124 --k=2.4077547343852066 --nr=96 --heated=1 
--
* python3 tc_r_heat_aw_eigenvalue_3d.py --Pr=1 --eta=0.6 --Gr=1000 --mu=0.2 --m=-3 --Ta=1541.3449572846273 --k=2.183621330421911 --nr=96 --heated=1 
--
* python3 tc_r_heat_aw_eigenvalue_3d.py --Pr=1 --eta=0.6 --Gr=1000 --mu=0.5 --m=-3 --Ta=1706.8472168508629 --k=1.5080179919085506 --nr=96 --heated=1 
--
* python3 tc_r_heat_aw_eigenvalue_3d.py --Pr=1 --eta=0.6 --Gr=1000 --mu=1 --m=-4 --Ta=6209.986904990039 --k=0.5695058435157576 --nr=96 --heated=1 
--




* python3 plot_ef.py --mu=-1 --m=0 --k=6.23491
* python3 plot_ef.py --mu=-0.5 --m=0 --k=3.88670
* python3 plot_ef.py --mu=-0.2 --m=-2 --k=2.87532
* python3 plot_ef.py --mu=0 --m=-2 --k=2.4077547343852066
* python3 plot_ef.py --mu=0.2 --m=-3 --k=2.183621330421911
* python3 plot_ef.py --mu=0.5 --m=-3 --k=1.5080179919085506
* python3 plot_ef.py --mu=1 --m=-4 --k=0.5695058435157576 --cbar=1
