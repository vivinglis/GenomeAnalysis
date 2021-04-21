GenomeAnalysis/
├── analysis
│   ├── 01_preprocessing
│   │   ├── fastqc_raw
│   │   │   ├── RNA_D1.1_fastqc.html
│   │   │   ├── RNA_D1.1_fastqc.zip
│   │   │   ├── RNA_D1.2_fastqc.html
│   │   │   ├── RNA_D1.2_fastqc.zip
│   │   │   ├── RNA_D3.1_fastqc.html
│   │   │   ├── RNA_D3.1_fastqc.zip
│   │   │   ├── RNA_D3.2_fastqc.html
│   │   │   └── RNA_D3.2_fastqc.zip
│   │   ├── fastqc_trim
│   │   │   ├── DNA_trim
│   │   │   │   ├── DNA_trim_D1_1.paired.trimmed_fastqc.html
│   │   │   │   ├── DNA_trim_D1_1.paired.trimmed_fastqc.zip
│   │   │   │   ├── DNA_trim_D1_2.paired.trimmed_fastqc.html
│   │   │   │   ├── DNA_trim_D1_2.paired.trimmed_fastqc.zip
│   │   │   │   ├── DNA_trim_D3_1.paired.trimmed_fastqc.html
│   │   │   │   ├── DNA_trim_D3_1.paired.trimmed_fastqc.zip
│   │   │   │   ├── DNA_trim_D3_2.paired.trimmed_fastqc.html
│   │   │   │   └── DNA_trim_D3_2.paired.trimmed_fastqc.zip
│   │   │   └── RNA_trim
│   │   │       ├── RNA_trim_D1_1.paired.trimmed_fastqc.html
│   │   │       ├── RNA_trim_D1_1.paired.trimmed_fastqc.zip
│   │   │       ├── RNA_trim_D1_2.paired.trimmed_fastqc.html
│   │   │       ├── RNA_trim_D1_2.paired.trimmed_fastqc.zip
│   │   │       ├── RNA_trim_D3_1.paired.trimmed_fastqc.html
│   │   │       ├── RNA_trim_D3_1.paired.trimmed_fastqc.zip
│   │   │       ├── RNA_trim_D3_2.paired.trimmed_fastqc.html
│   │   │       └── RNA_trim_D3_2.paired.trimmed_fastqc.zip
│   │   └── trimming
│   │       └── RNA_trimming_out
│   ├── 02_assembly
│   │   ├── D1_assembly_output
│   │   ├── D1_megahit_output
│   │   │   ├── checkpoints.txt
│   │   │   ├── intermediate_contigs
│   │   │   ├── log
│   │   │   ├── options.json
│   │   │   └── tmp
│   │   │       ├── k65
│   │   │       │   ├── 65.counting
│   │   │       │   ├── 65.sdbg.0
│   │   │       │   ├── 65.sdbg.1
│   │   │       │   ├── 65.sdbg.10
│   │   │       │   ├── 65.sdbg.11
│   │   │       │   ├── 65.sdbg.12
│   │   │       │   ├── 65.sdbg.13
│   │   │       │   ├── 65.sdbg.14
│   │   │       │   ├── 65.sdbg.15
│   │   │       │   ├── 65.sdbg.2
│   │   │       │   ├── 65.sdbg.3
│   │   │       │   ├── 65.sdbg.4
│   │   │       │   ├── 65.sdbg.5
│   │   │       │   ├── 65.sdbg.6
│   │   │       │   ├── 65.sdbg.7
│   │   │       │   ├── 65.sdbg.8
│   │   │       │   ├── 65.sdbg.9
│   │   │       │   └── 65.sdbg_info
│   │   │       ├── reads.lib
│   │   │       ├── reads.lib.bin
│   │   │       └── reads.lib.lib_info
│   │   └── junkfile
│   ├── 03_binning
│   │   └── junk_file.txt
│   └── 04_structural_annotation
│       └── junk_file.txt
├── code
│   ├── 0_gather_data.sh
│   ├── 1_a_preprocessing.sh
│   ├── 1_b_trimRNA.sh
│   ├── 2_assembly.sh
│   ├── fastqcRNAtrim.sh
│   ├── manfastqc.txt
│   └── slurm-4474876.out
├── data
│   ├── metadata
│   │   └── metadata.txt
│   ├── raw_data
│   │   └── RNA_raw
│   │       ├── SRR4342137.1.fastq.gz -> /proj/g2021012/4_Thrash_2017/RNA_untrimmed/SRR4342137.1.fastq.gz
│   │       ├── SRR4342137.2.fastq.gz -> /proj/g2021012/4_Thrash_2017/RNA_untrimmed/SRR4342137.2.fastq.gz
│   │       ├── SRR4342139.1.fastq.gz -> /proj/g2021012/4_Thrash_2017/RNA_untrimmed/SRR4342139.1.fastq.gz
│   │       └── SRR4342139.2.fastq.gz -> /proj/g2021012/4_Thrash_2017/RNA_untrimmed/SRR4342139.2.fastq.gz
│   └── trimmed_data
│       ├── DNA_trimmed
│       │   ├── SRR4342129_1.paired.trimmed.fastq.gz -> /proj/g2021012/4_Thrash_2017/DNA_trimmed/SRR4342129_1.paired.trimmed.fastq.gz
│       │   ├── SRR4342129_2.paired.trimmed.fastq.gz -> /proj/g2021012/4_Thrash_2017/DNA_trimmed/SRR4342129_2.paired.trimmed.fastq.gz
│       │   ├── SRR4342133_1.paired.trimmed.fastq.gz -> /proj/g2021012/4_Thrash_2017/DNA_trimmed/SRR4342133_1.paired.trimmed.fastq.gz
│       │   └── SRR4342133_2.paired.trimmed.fastq.gz -> /proj/g2021012/4_Thrash_2017/DNA_trimmed/SRR4342133_2.paired.trimmed.fastq.gz
│       └── RNA_trimmed
│           ├── ILLUMINACLIP:TruSeq3-PE.fa:2:30:10:2:keepBothReads
│           ├── LEADING:3
│           ├── RNA_trim_D1_1.paired.trimmed.fastq.gz
│           ├── RNA_trim_D1_2.paired.trimmed.fastq.gz
│           ├── RNA_trim_D3_1.paired.trimmed.fastq.gz
│           └── RNA_trim_D3_2.paired.trimmed.fastq.gz
└── README.md

22 directories, 76 files
