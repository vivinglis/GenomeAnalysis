# Script to run fastQC on trimmed RNA reads

for files in ~/genome_analysis/GenomeAnalysis/data/trimmed_data/RNA_trimmed/RNA*
do
fastqc $files -o ~/genome_analysis/GenomeAnalysis/analysis/01_preprocessing/fastqc_trim/RNA_trim
done
