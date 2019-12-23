#!/bin/bash
#SBATCH --time=00:30:00
#SBATCH --array=1-2%1
#SBATCH --cpus-per-task=48
#SBATCH --mem=200G  
#SBATCH --nodes=1



#SBATCH --account=def-gambsseb
#SBATCH --mail-user=a.u.matchi@gmail.com
#SBATCH --mail-type=ALL


cd ../experiments

python experiments_fast.py --id=5 --metric=$SLURM_ARRAY_TASK_ID --attr=1

