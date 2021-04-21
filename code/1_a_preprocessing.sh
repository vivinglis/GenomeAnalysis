# Preprocessing Script
# Quality control - fastqc on raw RNA reads
# Trimming of raw RNA reads with trimmomatic
# Quality control - fastqc on trimmed RNA reads
# Quality control - fastqc on already trimmed DNA reads

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

# Script to run fastQC on trimmed DNA reads

for file in ~/genome_analysis/GenomeAnalysis/data/trimmed_data/DNA_trimmed/*
do
fastqc $file -o ~/genome_analysis/GenomeAnalysis/analysis/01_preprocessing/fastqc_trim/DNA_trim
done

# Renaming raw (RNA) fastqc results

cd ~/genome_analysis/GenomeAnalysis/analysis/01_preprocessing/fastqc_trim/DNA_trim

for name in SRR4342129*
do newname=DNA_trim_D1"$(echo "$name" | cut -c11-)"
mv "$name" "$newname"
done

for name in SRR4342133*
do newname=DNA_trim_D3"$(echo "$name" | cut -c11-)"
mv "$name" "$newname"
done
