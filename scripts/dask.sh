#!/bin/bash
#SBATCH --time=01:00:00
#SBATCH --array=1,4,5%1
#SBATCH --cpus-per-task=32
#SBATCH --mem=31G  
#SBATCH --nodes=3

#SBATCH --account=def-gambsseb
#SBATCH --mail-user=a.u.matchi@gmail.com
#SBATCH --mail-type=ALL


cd ../experiments

python dask.py --id=6 --metric=$SLURM_ARRAY_TASK_ID --attr=1

