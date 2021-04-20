# Script to run fastQC on trimmed DNA reads

module load bioinfo-tools
module load FastQC/0.11.9

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
