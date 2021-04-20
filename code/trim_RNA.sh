# trim RNA reads using trimmomatic
module load bioinfo-tools
module load trimmomatic

cd ~/genome_analysis/GenomeAnalysis/data/trimmed_data/RNA_trimmed/

java -jar trimmomatic-0.39.jar PE \
~/genome_analysis/GenomeAnalysis/data/raw_data/RNA_raw/SRR4342137.1.fastq.gz \
~/genome_analysis/GenomeAnalysis/data/raw_data/RNA_raw/SRR4342137.2.fastq.gz \
RNA_trim_D1_1.paired.trimmed.fastq.gz \
RNA_trim_D1_2.paired.trimmed.fastq.gz \
ILLUMINACLIP:TruSeq3-PE.fa:2:30:10:2:keepBothReads LEADING:3 TRAILING:3 MINLEN:36

java -jar trimmomatic-0.39.jar PE \
~/genome_analysis/GenomeAnalysis/data/raw_data/RNA_raw/SRR4342139.1.fastq.gz \
~/genome_analysis/GenomeAnalysis/data/raw_data/RNA_raw/SRR4342139.2.fastq.gz \
RNA_trim_D3_1.paired.trimmed.fastq.gz \
RNA_trim_D3_2.paired.trimmed.fastq.gz \
ILLUMINACLIP:TruSeq3-PE.fa:2:30:10:2:keepBothReads LEADING:3 TRAILING:3 MINLEN:36
