#!/bin/bash -l
#SBATCH -A g2021012
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 03:00:00
#SBATCH -J metaquast

# Load modules
module load bioinfo-tools quast

cd ~/genome_analysis/GenomeAnalysis/analysis/02_assembly/assembly_QC

python metaquast.py ../D1_megahit_output/final.contigs.fa -o D1_metaquast_out
python metaquast.py ../D3_megahit_output/final.contigs.fa -o D3_metaquast_out
