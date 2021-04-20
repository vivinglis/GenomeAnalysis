# Script to run fastQC on raw (RNA) reads

for file in ~/genome_analysis/GenomeAnalysis/data/trimmed_data/DNA_trimmed/*
do
fastqc $file -o ~/genome_analysis/GenomeAnalysis/analysis/01_preprocessing/fastqc_trim/DNA_trim
done
