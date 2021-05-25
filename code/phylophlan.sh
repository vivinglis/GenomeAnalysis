# Bash script to do phylogenetic placement of bins
# aka get taxonomic IDs for them
# using phylophlan 0.99 because I couldn't get v 3 to work.
# Loading phylophlan 0.99 automatically loads python/2.7.11

module load bioinfo-tools
module load phylophlan FastTree muscle usearch/5.2.32

# Need to rename some annotation files so that they're not all named based on date
# Should've done this when running prokka!
cd /home/vinglis/genome_analysis/GenomeAnalysis/analysis/04_annotation/D1_prokka_output
for D1_prokkabins in *prokka_out*
do 
for D1_prokkafiles in $D1_prokkabins/*
do mv "$D1_prokkafiles" "${D1_prokkafiles//PROKKA_05232021/$D1_prokkabins}"
done
done

cd ../D3_prokka_output
for D3_prokkabins in *prokka_out*
do 
for D3_prokkafiles in $D3_prokkabins/*
do mv "$D3_prokkafiles" "${D3_prokkafiles//PROKKA_05232021/$D3_prokkabins}"
done
done

# Move to directory to do analysis
cd /home/vinglis/genome_analysis/GenomeAnalysis/analysis/06_phylogeny/

# Copy installed phylophlan 0.99 files to my working directory
# since they are no longer available to download from bitbucket
cp -r /sw/bioinfo/phylophlan/0.99/snowy/bin/* .

# Make soft links to prokka output in phylophlan input folder
cd phylophlan/input
mkdir D1_prokka_output
mkdir D3_prokka_output

cd D1_prokka_output
ln -s /home/vinglis/genome_analysis/GenomeAnalysis/analysis/04_annotation/D1_prokka_output/*prokka_out*/*.faa .

cd ../D3_prokka_output
ln -s /home/vinglis/genome_analysis/GenomeAnalysis/analysis/04_annotation/D3_prokka_output/*prokka_out*/*.faa .

# Finally actually running phylophlan!
# Ran for both sites and saved standard error to .out files.

phylophlan.py -i -t --nproc 2 D1_prokka_output 2>../D1_phylophlan.out
phylophlan.py -i -t --nproc 2 D3_prokka_output 2>../D3_phylophlan.out
