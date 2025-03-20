#!/bin/bash
# Set up MiniConda
source /work/KHA/PyPSA-ENV/miniconda3/etc/profile.d/conda.sh
export PATH=/work/KHA/PyPSA-ENV/miniconda3/bin:$PATH

# Activate the Conda environment
conda activate pypsa-eur

# Go to the working folder
cd /work/KHA

# Set the Gurobi license path
export GRB_LICENSE_FILE=/work/KHA/co2_sweep/gurobi.lic
