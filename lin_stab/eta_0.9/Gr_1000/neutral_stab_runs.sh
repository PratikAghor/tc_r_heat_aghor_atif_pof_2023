#!/bin/bash

# make sure dedalus env is active
#------------------------------------
# echo "running mu -1 \n"
# bash eta_0.9_Gr_1000_mu_-1_runs.sh
# echo "mu -1 done \n"
# #------------------------------------
# echo "running mu -0.5 \n"
# bash eta_0.9_Gr_1000_mu_-0.5_runs.sh
# echo "mu -0.5 done \n"
# #------------------------------------
# echo "running mu -0.2 \n"
# bash eta_0.9_Gr_1000_mu_-0.2_runs.sh
# echo "mu -0.2 done \n"
#------------------------------------
# echo "running mu 0 \n"
# bash eta_0.9_Gr_1000_mu_0_runs.sh
# echo "mu 0 done \n"
#------------------------------------
# echo "running mu 0.2 \n"
# bash eta_0.9_Gr_1000_mu_0.2_runs.sh
# echo "mu 0.2 done \n"
#------------------------------------
echo "running mu 0.5 \n"
bash eta_0.9_Gr_1000_mu_0.5_runs.sh
echo "mu 0.5 done \n"
#------------------------------------
# echo "running mu 1 \n"
# bash eta_0.9_Gr_1000_mu_0.5_runs.sh
# echo "mu 1 done \n"
#------------------------------------
# instability islands
echo "running mu 0.6 \n"
bash eta_0.9_Gr_1000_mu_0.6_runs.sh
echo "mu 0.6 done \n"

# echo "running mu 0.7 \n"
# bash eta_0.9_Gr_1000_mu_0.7_runs.sh
# echo "mu 0.7 done \n"

echo "running mu 0.8 \n"
bash eta_0.9_Gr_1000_mu_0.8_runs.sh
echo "mu 0.8 done \n"

echo "running mu 0.9 \n"
bash eta_0.9_Gr_1000_mu_0.9_runs.sh
echo "mu 0.9 done \n"

#------------------------------------