#!/bin/bash
#SBATCH --partition=day
#SBATCH --job-name=basic_job
#SBATCH --ntasks=1 --nodes=1
#SBATCH --cpus-per-task=1
#SBATCH --mem-per-cpu=5G
#SBATCH --time=00-00:01:00
#SBATCH --mail-type=ALL

#################################################
# please DO NOT remove the following two commands
#################################################
module load StdEnv
export SLURM_EXPORT_ENV=ALL
#################################################
module load miniconda
conda create -n 483env
conda activate 483env
conda install python=11
conda install klepto
conda install pytz
conda install -c anaconda scikit-learn
conda install -c pytorch PyTorch
conda install -c pytorch cpuonly
conda install -c anaconda openssl
conda install -c anaconda cudatoolkit
conda install -c nvidia cuda-cudart
conda install -c pytorch pytorch-cuda
conda install -c conda-forge python_abi
conda install -c anaconda pip
pip install torch-geometric
pip install pandas
pip install torch-scatter
pip install torch-cluster
pip install torch-sparse

#!/bin/bash

# if the program is killed, run:
# conda activate 483env
# python main.py
python main.py
