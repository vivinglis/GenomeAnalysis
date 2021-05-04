# Commandline script to run CheckM

cd ~/genome_analysis/GenomeAnalysis/analysis/03_binning/binning_QC

module load bioinfo-tools
module load CheckM

# CheckM commands to run
# Ugly code, should've done a loop.

checkm len_plot -x fa ../D1_metabat_output D1_len_plots
checkm len_plot -x fa ../D3_metabat_output D3_len_plots

checkm len_hist -x fa ../D1_metabat_output D1_len_hist
checkm len_hist -x fa ../D3_metabat_output D3_len_hist

checkm unbinned -x fa ../D1_metabat_output ../../02_assembly/D1_megahit_output/final.contigs.fa D1_unbinned.out D1_unbinned_stats.out
checkm unbinned -x fa ../D3_metabat_output ../../02_assembly/D3_megahit_output/final.contigs.fa D3_unbinned.out D3_unbinned_stats.out

checkm tetra -t 2 ../../02_assembly/D1_megahit_output/final.contigs.fa D1_tetra.out
checkm tetra -t 2 ../../02_assembly/D3_megahit_output/final.contigs.fa D3_tetra.out

# Taxonomy pipeline which includes taxon_set, analyze and qa.

checkm taxonomy_wf -t 2 -x fa domain Bacteria ../D1_metabat_output/ D1_taxonomy_wf
checkm taxonomy_wf -t 2 -x fa domain Bacteria ../D3_metabat_output/ D3_taxonomy_wf

# Extra QA because I wanted better output

checkm qa -t 2 -o 2 D1_taxonomy_wf/Bacteria.ms D1_taxonomy_wf > D1_qa.out
checkm qa -t 2 -o 2 D3_taxonomy_wf/Bacteria.ms D3_taxonomy_wf > D3_qa.out

# Finally, running the qa plot

checkm bin_qa_plot -x fa D1_taxonomy_wf ../D1_metabat_output D1_bin_qa_plot
checkm bin_qa_plot -x fa D3_taxonomy_wf ../D3_metabat_output D3_bin_qa_plot
