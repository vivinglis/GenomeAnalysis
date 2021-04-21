#!/bin/bash -l
#SBATCH -A g2021012
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 02:00:00
#SBATCH -J trim_RNA
#SBATCH --mail-type=ALL
#SBATCH --mail-user vivianne.inglis.0395@student.uu.se

# trim RNA reads using trimmomatic
module load bioinfo-tools
module load trimmomatic

cd ~/genome_analysis/GenomeAnalysis/data/trimmed_data/RNA_trimmed/

java -jar $TRIMMOMATIC_HOME/trimmomatic.jar PE \
~/genome_analysis/GenomeAnalysis/data/raw_data/RNA_raw/SRR4342137.1.fastq.gz \
~/genome_analysis/GenomeAnalysis/data/raw_data/RNA_raw/SRR4342137.2.fastq.gz \
RNA_trim_D1_1.paired.trimmed.fastq.gz \
RNA_trim_D1_2.paired.trimmed.fastq.gz \
ILLUMINACLIP:TruSeq3-PE.fa:2:30:10:2:keepBothReads LEADING:3 TRAILING:3 MINLEN:36

java -jar $TRIMMOMATIC_HOME/trimmomatic.jar PE \
~/genome_analysis/GenomeAnalysis/data/raw_data/RNA_raw/SRR4342139.1.fastq.gz \
~/genome_analysis/GenomeAnalysis/data/raw_data/RNA_raw/SRR4342139.2.fastq.gz \
RNA_trim_D3_1.paired.trimmed.fastq.gz \
RNA_trim_D3_2.paired.trimmed.fastq.gz \
ILLUMINACLIP:TruSeq3-PE.fa:2:30:10:2:keepBothReads LEADING:3 TRAILING:3 MINLEN:36
