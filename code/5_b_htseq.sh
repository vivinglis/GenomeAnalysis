# Bash script to count RNA reads that map to genomic features

module load bioinfo-tools
module load htseq

# Move to directory
cd ~/genome_analysis/GenomeAnalysis/analysis/05_mapping/D1_HTseq

# Input for htseq requires a feature file in gff format and the input alignment in BAM format
ln -s ~/genome_analysis/GenomeAnalysis/analysis/04_annotation/D1_prokka_output/*prokka_out*/*.gff .
ln -s ../D1_bwa_alignment/*.bam .

# edit gff files
grep -v "#" bin.2.fa_prokka_out.gff | grep "ID=" | cut -f1 -d ';' | sed 's/ID=//g' | cut -f1,4,5,7,9 |  awk -v OFS='\t' '{print $1,"PROKKA","CDS",$2,$3,".",$4,".","gene_id " $5}' > bin.10.map.gff


python -m HTSeq.scripts.count -r pos -t CDS ../D1_bwa_alignment/D1_supercontig.RNA.aln.sam bin.10.map.gtf > bin.10.count

# won't process alignments!!!
