#!/bin/bash -l
#SBATCH -A g2021012
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 03:00:00
#SBATCH -J metabat

# Load modules
module load bioinfo-tools 
module load MetaBat

cd ~/genome_analysis/GenomeAnalysis/analysis/03_binning

metabat -i ../02_assembly/D1_megahit_output/final.contigs.fa -o D1_metabat_output/bin -t 2 -v
metabat -i ../02_assembly/D3_megahit_output/final.contigs.fa -o D3_metabat_output/bin -t 2 -v
