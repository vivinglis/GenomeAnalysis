#!/bin/bash -l
#SBATCH -A g2021012
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 20:00:00
#SBATCH -J megahit_assembly
#SBATCH --mail-type=ALL
#SBATCH --mail-user vivianne.inglis.0395@student.uu.se

# Load modules
module load bioinfo-tools
module load megahit

# Paper's parameters (IBDA-UB) -mink 65 -maxk 105 -step 10.
# TAs recommended --kmin-1pass

cd ~/genome_analysis/GenomeAnalysis/analysis/02_assembly


# Assembly for DNA from site D1
megahit --k-min 65 --k-max 105 --k-step 10 --kmin-1pass \
-1 ~/genome_analysis/GenomeAnalysis/data/trimmed_data/DNA_trimmed/SRR4342129_1.paired.trimmed.fastq.gz \
-2 ~/genome_analysis/GenomeAnalysis/data/trimmed_data/DNA_trimmed/SRR4342129_2.paired.trimmed.fastq.gz \
-o D1_megahit_output 2>D1_assembly_output


# Assembly for DNA from site D3
megahit --k-min 65 --k-max 105 --k-step 10 --kmin-1pass \
-1 ~/genome_analysis/GenomeAnalysis/data/trimmed_data/DNA_trimmed/SRR4342133_1.paired.trimmed.fastq.gz \
-2 ~/genome_analysis/GenomeAnalysis/data/trimmed_data/DNA_trimmed/SRR4342133_2.paired.trimmed.fastq.gz \
-o D3_megahit_output 2>D3_assembly_output
