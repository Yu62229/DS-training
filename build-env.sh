#!/usr/bin/env bash

#SBATCH --account=MST114029
#SBATCH --partition=gp1d
#SBATCH --job-name=build
#SBATCH --output=logs/build/%x-%j.out
#SBATCH --error=logs/build/%x-%j.err
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=8
#SBATCH --gpus-per-node=2
#SBATCH --time=12:00:00
#SBATCH --mem=180G
#SBATCH --mail-user=hychen62229@gapp.nthu.edu.com
#SBATCH --mail-type=ALL

cd /work/hychen62229/DS-training
pixi shell
pixi run build
