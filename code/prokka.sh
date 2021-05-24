# Bash script to run prokka on D1 & D3 final contigs
# using options --metagenome (for fragmented contigs) and --cpus 2 (to specify 2 cores)

module load bioinfo-tools
module load prokka

cd ~/genome_analysis/GenomeAnalysis/analysis/03_binning/D1_metabat_output/
for D1_binfastafile in *.fa
do
prokka --outdir ~/genome_analysis/GenomeAnalysis/analysis/04_annotation/D1_prokka_output/"$D1_binfastafile"_prokka_out \
--metagenome --cpus 2 $D1_binfastafile 2>~/genome_analysis/GenomeAnalysis/analysis/04_annotation/D1_prokka_output/"$D1_binfastafile"_annotation.out
done

cd ~/genome_analysis/GenomeAnalysis/analysis/03_binning/D3_metabat_output/
for D3_binfastafile in *.fa
do
prokka --outdir ~/genome_analysis/GenomeAnalysis/analysis/04_annotation/D3_prokka_output/"$D3_binfastafile"_prokka_out \
--metagenome --cpus 2 $D3_binfastafile 2>~/genome_analysis/GenomeAnalysis/analysis/04_annotation/D3_prokka_output/"$D3_binfastafile"_annotation.out
done
