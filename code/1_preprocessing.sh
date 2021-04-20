# Script to run fastQC on raw (RNA) reads

for file in ~/genome_analysis/GenomeAnalysis/data/raw_data/RNA_raw/*
do
fastqc $file -o ~/genome_analysis/GenomeAnalysis/analysis/01_preprocessing/fastqc_raw
done
