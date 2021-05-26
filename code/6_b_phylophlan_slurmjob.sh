#!/bin/bash -l
#SBATCH -A g2021012
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 14:00:00
#SBATCH -J phylophlan

module load bioinfo-tools
module load phylophlan FastTree muscle usearch/5.2.32


# Finally actually running phylophlan!
# Ran for both sites and saved standard error to .out files.

cd /home/vinglis/genome_analysis/GenomeAnalysis/analysis/06_phylogeny/phylophlan
phylophlan.py -i -t --nproc 2 D1_prokka_output 2>../D1_phylophlan.out
phylophlan.py -i -t --nproc 2 D3_prokka_output 2>../D3_phylophlan.out



