# Script to run fastQC on raw (RNA) reads

module load bioinfo-tools
module load FastQC/0.11.9


for file in ~/genome_analysis/GenomeAnalysis/data/raw_data/RNA_raw/*
do
fastqc $file -o ~/genome_analysis/GenomeAnalysis/analysis/01_preprocessing/fastqc_raw
done

# Renaming raw (RNA) fastqc results

cd ~/genome_analysis/GenomeAnalysis/analysis/01_preprocessing/fastqc_raw/

for name in SRR4342137*
do newname=RNA_D1"$(echo "$name" | cut -c11-)"
mv "$name" "$newname"
done

for name in SRR4342139*
do newname=RNA_D3"$(echo "$name" | cut -c11-)"
mv "$name" "$newname"
done

