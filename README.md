# Effect of outer cylinder rotation on the radially heated Taylor-Couette flow, Aghor and Atif, Phys. Fluids., 2023
### Authors: Pratik Aghor and Mohammad Atif

## Brief description of code used to generate data and plots in Aghor and Atif, Phys. Fluids., 2023

* ```sigma_vs_k_tc_r_heat_aw.py```: Given a range of Taylor numbers (Ta) and axial perturbation wavenumbers (kz), calculates growth rate versus kz (dispersion relation)
* ```plot_sigma_vs_k.py```: Plots dispersion relation curves
* ```tc_r_heat_aw_stability.py```: Calculates neutral stability curves for a range of Taylor numbers (Ta) and axial perturbation wavenumbers (kz)
* ```neutral_stab_h5_to_asc.py```: Converts data (only black points on the neutral stability boundary) from dedalus h5 files to asc files
* ```crit_ef/tc_r_heat_aw_eigenvalue_3d.py```: Calculates growth rate, frequency and critical eigenfunctions at given parameters
* ```crit_ef/plot_ef.py```: Plots 2d slices of the critical eigenfunctions

* Some caviats: eta = 0.6 works well with dedalus2, but eta = 0.9 ran into problems with dedalus2. Use older version of dedalus to generate plots for eta 0.9. 



