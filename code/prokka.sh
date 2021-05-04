#!/bin/bash -l
#SBATCH -A g2021012
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 03:00:00
#SBATCH -J prokka

# Load modules
module load bioinfo-tools
module load prokka

cd ~/genome_analysis/GenomeAnalysis/analysis/04_annotation


