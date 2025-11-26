#!/usr/bin/env bash

#SBATCH --account=MST114029
#SBATCH --partition=gp1d
#SBATCH --job-name=train
#SBATCH --output=/work/hychen62229/DS-training/logs/train/%x-%j.out
#SBATCH --error=/work/hychen62229/DS-training/logs/train/%x-%j.err
#SBATCH --nodes=4                    
#SBATCH --time=12:00:00              
#SBATCH --cpus-per-task=4
#SBATCH --mem=90G                    
#SBATCH --gres=gpu:1                  
#SBATCH --ntasks-per-node=1          
#SBATCH --mail-type=END,FAIL
#SBATCH --mail-user=hychen62229@gapp.nthu.edu.tw

cd /work/hychen62229/DS-training
srun pixi run run-gpt
