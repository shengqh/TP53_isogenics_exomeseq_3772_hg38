#!/usr/bin/perl
use strict;
use warnings;

use CQS::FileUtils;
use CQS::SystemUtils;
use CQS::ConfigUtils;
use CQS::ClassFactory;
use CQS::PerformExomeSeq;

my $def = {
  debug => 1,
  task_name => "lindsay_exomeseq_3772",
  target_dir => "/scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38",
  email      => "quanhu.sheng.1\@vumc.org",
  files      => {
    "P_181" => ["/data/cqs/jennifer_pietenpol/20190905_3772/3772-LR-1-GGTACCGA-GTGGTATC_S01_L001_R1_001.fastq.gz", "/data/cqs/jennifer_pietenpol/20190905_3772/3772-LR-1-GGTACCGA-GTGGTATC_S01_L001_R2_001.fastq.gz"],
    "P_181F1" => ["/data/cqs/jennifer_pietenpol/20190905_3772/3772-LR-2-AACGTTAG-ACAACGCT_S01_L001_R1_001.fastq.gz", "/data/cqs/jennifer_pietenpol/20190905_3772/3772-LR-2-AACGTTAG-ACAACGCT_S01_L001_R2_001.fastq.gz"],
    "P_196" => ["/data/cqs/jennifer_pietenpol/20190905_3772/3772-LR-3-GGTCTATT-ATTCCATA_S01_L001_R1_001.fastq.gz", "/data/cqs/jennifer_pietenpol/20190905_3772/3772-LR-3-GGTCTATT-ATTCCATA_S01_L001_R2_001.fastq.gz"],
    "P_196F1" => ["/data/cqs/jennifer_pietenpol/20190905_3772/3772-LR-4-AACTCGCC-GCCTTGCG_S01_L001_R1_001.fastq.gz", "/data/cqs/jennifer_pietenpol/20190905_3772/3772-LR-4-AACTCGCC-GCCTTGCG_S01_L001_R2_001.fastq.gz"],
    "P_196F2" => ["/data/cqs/jennifer_pietenpol/20190905_3772/3772-LR-5-CTGTCACT-GCTCTTAA_S01_L001_R1_001.fastq.gz", "/data/cqs/jennifer_pietenpol/20190905_3772/3772-LR-5-CTGTCACT-GCTCTTAA_S01_L001_R2_001.fastq.gz"],
    "P_C08" => ["/data/cqs/jennifer_pietenpol/20190905_3772/3772-LR-6-TCACTGTC-ATCTCCGG_S01_L001_R1_001.fastq.gz", "/data/cqs/jennifer_pietenpol/20190905_3772/3772-LR-6-TCACTGTC-ATCTCCGG_S01_L001_R2_001.fastq.gz"],
    "P_23B" => ["/data/cqs/jennifer_pietenpol/20190905_3772/3772-LR-7-TATGACAA-CGGATGCT_S01_L001_R1_001.fastq.gz", "/data/cqs/jennifer_pietenpol/20190905_3772/3772-LR-7-TATGACAA-CGGATGCT_S01_L001_R2_001.fastq.gz"],
    "P_64B" => ["/data/cqs/jennifer_pietenpol/20190905_3772/3772-LR-8-CGCAGTGG-TAAGCATC_S01_L001_R1_001.fastq.gz", "/data/cqs/jennifer_pietenpol/20190905_3772/3772-LR-8-CGCAGTGG-TAAGCATC_S01_L001_R2_001.fastq.gz"],
    "P_67B" => ["/data/cqs/jennifer_pietenpol/20190905_3772/3772-LR-9-AGTATGCT-AACGGTCT_S01_L001_R1_001.fastq.gz", "/data/cqs/jennifer_pietenpol/20190905_3772/3772-LR-9-AGTATGCT-AACGGTCT_S01_L001_R2_001.fastq.gz"],
    "P_175_06" => ["/data/cqs/jennifer_pietenpol/20190905_3772/3772-LR-10-GACGCATC-GGTAACTC_S01_L001_R1_001.fastq.gz", "/data/cqs/jennifer_pietenpol/20190905_3772/3772-LR-10-GACGCATC-GGTAACTC_S01_L001_R2_001.fastq.gz"],
    "P_175_09" => ["/data/cqs/jennifer_pietenpol/20190905_3772/3772-LR-11-GCGCATGC-GTGGACAA_S01_L001_R1_001.fastq.gz", "/data/cqs/jennifer_pietenpol/20190905_3772/3772-LR-11-GCGCATGC-GTGGACAA_S01_L001_R2_001.fastq.gz"],
    "P_175_10" => ["/data/cqs/jennifer_pietenpol/20190905_3772/3772-LR-12-ATATGCAT-ACAAGTGG_S01_L001_R1_001.fastq.gz", "/data/cqs/jennifer_pietenpol/20190905_3772/3772-LR-12-ATATGCAT-ACAAGTGG_S01_L001_R2_001.fastq.gz"],
    "P_175_18" => ["/data/cqs/jennifer_pietenpol/20190905_3772/3772-LR-13-GGAGTGCC-TCCTGGTT_S01_L001_R1_001.fastq.gz", "/data/cqs/jennifer_pietenpol/20190905_3772/3772-LR-13-GGAGTGCC-TCCTGGTT_S01_L001_R2_001.fastq.gz"],
    "P_09B" => ["/data/cqs/jennifer_pietenpol/20190905_3772/3772-LR-14-AAGACATT-CTTCAACC_S01_L001_R1_001.fastq.gz", "/data/cqs/jennifer_pietenpol/20190905_3772/3772-LR-14-AAGACATT-CTTCAACC_S01_L001_R2_001.fastq.gz"],
    "P_12B" => ["/data/cqs/jennifer_pietenpol/20190905_3772/3772-LR-15-TCGAGCCA-TCGCTATG_S01_L001_R1_001.fastq.gz", "/data/cqs/jennifer_pietenpol/20190905_3772/3772-LR-15-TCGAGCCA-TCGCTATG_S01_L001_R2_001.fastq.gz"],
    "P_31B" => ["/data/cqs/jennifer_pietenpol/20190905_3772/3772-LR-16-CTAGATTG-CTATCGCA_S01_L001_R1_001.fastq.gz", "/data/cqs/jennifer_pietenpol/20190905_3772/3772-LR-16-CTAGATTG-CTATCGCA_S01_L001_R2_001.fastq.gz"],
    "P_38B" => ["/data/cqs/jennifer_pietenpol/20190905_3772/3772-LR-17-AGGCCGTG-CATTAGTG_S01_L001_R1_001.fastq.gz", "/data/cqs/jennifer_pietenpol/20190905_3772/3772-LR-17-AGGCCGTG-CATTAGTG_S01_L001_R2_001.fastq.gz"],
    "P_42B" => ["/data/cqs/jennifer_pietenpol/20190905_3772/3772-LR-18-GAATTACA-TGCCGACA_S01_L001_R1_001.fastq.gz", "/data/cqs/jennifer_pietenpol/20190905_3772/3772-LR-18-GAATTACA-TGCCGACA_S01_L001_R2_001.fastq.gz"],
    "P_56B" => ["/data/cqs/jennifer_pietenpol/20190905_3772/3772-LR-19-TTCTGTAG-AGTAGAGC_S01_L001_R1_001.fastq.gz", "/data/cqs/jennifer_pietenpol/20190905_3772/3772-LR-19-TTCTGTAG-AGTAGAGC_S01_L001_R2_001.fastq.gz"],
    "P_60B" => ["/data/cqs/jennifer_pietenpol/20190905_3772/3772-LR-20-CCTCACGA-GACGAGAT_S01_L001_R1_001.fastq.gz", "/data/cqs/jennifer_pietenpol/20190905_3772/3772-LR-20-CCTCACGA-GACGAGAT_S01_L001_R2_001.fastq.gz"],
    #"P_273_20" => ["/data/cqs/jennifer_pietenpol/20190905_3772/3772-LR-21-CCGGTAAC-CGTGCTTG_S01_L001_R1_001.fastq.gz", "/data/cqs/jennifer_pietenpol/20190905_3772/3772-LR-21-CCGGTAAC-CGTGCTTG_S01_L001_R2_001.fastq.gz"],
    "P_273_22" => ["/data/cqs/jennifer_pietenpol/20190905_3772/3772-LR-22-TTAACGGT-TACATCCA_S01_L001_R1_001.fastq.gz", "/data/cqs/jennifer_pietenpol/20190905_3772/3772-LR-22-TTAACGGT-TACATCCA_S01_L001_R2_001.fastq.gz"],
    #"P_66B" => ["/data/cqs/jennifer_pietenpol/20190905_3772/3772-LR-23-GCAATATT-GACTGAGT_S01_L001_R1_001.fastq.gz", "/data/cqs/jennifer_pietenpol/20190905_3772/3772-LR-23-GCAATATT-GACTGAGT_S01_L001_R2_001.fastq.gz"],
    "P_175_12" => ["/data/cqs/jennifer_pietenpol/20190905_3772/3772-LR-24-ATGGCGCC-AGTCAGAC_S01_L001_R1_001.fastq.gz", "/data/cqs/jennifer_pietenpol/20190905_3772/3772-LR-24-ATGGCGCC-AGTCAGAC_S01_L001_R2_001.fastq.gz"],
    "P_175_19" => ["/data/cqs/jennifer_pietenpol/20190905_3772/3772-LR-25-TGGCGAAG-ATAATCCG_S01_L001_R1_001.fastq.gz", "/data/cqs/jennifer_pietenpol/20190905_3772/3772-LR-25-TGGCGAAG-ATAATCCG_S01_L001_R2_001.fastq.gz"],
    "P_175_23" => ["/data/cqs/jennifer_pietenpol/20190905_3772/3772-LR-26-CAATAGGA-GCGGCTTA_S01_L001_R1_001.fastq.gz", "/data/cqs/jennifer_pietenpol/20190905_3772/3772-LR-26-CAATAGGA-GCGGCTTA_S01_L001_R2_001.fastq.gz"],
    "P_175_33" => ["/data/cqs/jennifer_pietenpol/20190905_3772/3772-LR-27-CACAGCGG-GAGAATGG_S01_L001_R1_001.fastq.gz", "/data/cqs/jennifer_pietenpol/20190905_3772/3772-LR-27-CACAGCGG-GAGAATGG_S01_L001_R2_001.fastq.gz"],
    "P_273_03" => ["/data/cqs/jennifer_pietenpol/20190905_3772/3772-LR-28-TGTGATAA-AGAGGCAA_S01_L001_R1_001.fastq.gz", "/data/cqs/jennifer_pietenpol/20190905_3772/3772-LR-28-TGTGATAA-AGAGGCAA_S01_L001_R2_001.fastq.gz"],
    "P_273_13" => ["/data/cqs/jennifer_pietenpol/20190905_3772/3772-LR-29-GTGGTCGT-TCACAACA_S01_L001_R1_001.fastq.gz", "/data/cqs/jennifer_pietenpol/20190905_3772/3772-LR-29-GTGGTCGT-TCACAACA_S01_L001_R2_001.fastq.gz"],
    "P_273_21" => ["/data/cqs/jennifer_pietenpol/20190905_3772/3772-LR-30-ACAACTAC-CTGTGGTG_S01_L001_R1_001.fastq.gz", "/data/cqs/jennifer_pietenpol/20190905_3772/3772-LR-30-ACAACTAC-CTGTGGTG_S01_L001_R2_001.fastq.gz"],
    "P_C04" => ["/data/cqs/jennifer_pietenpol/20190905_3772/3772-LR-31-GGCTCGAG-GAACTGAG_S01_L001_R1_001.fastq.gz", "/data/cqs/jennifer_pietenpol/20190905_3772/3772-LR-31-GGCTCGAG-GAACTGAG_S01_L001_R2_001.fastq.gz"],
    "P_175_27" => ["/data/cqs/jennifer_pietenpol/20190905_3772/3772-LR-32-AATCTAGA-AGGTCAGA_S01_L001_R1_001.fastq.gz", "/data/cqs/jennifer_pietenpol/20190905_3772/3772-LR-32-AATCTAGA-AGGTCAGA_S01_L001_R2_001.fastq.gz"],
    "P_273_37" => ["/data/cqs/jennifer_pietenpol/20190905_3772/3772-LR-33-CTGCGTTA-AAGGCCAC_S01_L001_R1_001.fastq.gz", "/data/cqs/jennifer_pietenpol/20190905_3772/3772-LR-33-CTGCGTTA-AAGGCCAC_S01_L001_R2_001.fastq.gz"],
    "P_273_38" => ["/data/cqs/jennifer_pietenpol/20190905_3772/3772-LR-34-TCATACCG-GGAATTGT_S01_L001_R1_001.fastq.gz", "/data/cqs/jennifer_pietenpol/20190905_3772/3772-LR-34-TCATACCG-GGAATTGT_S01_L001_R2_001.fastq.gz"],
    "P_273_39" => ["/data/cqs/jennifer_pietenpol/20190905_3772/3772-LR-35-CTTAAGTC-CCTGACCA_S01_L001_R1_001.fastq.gz", "/data/cqs/jennifer_pietenpol/20190905_3772/3772-LR-35-CTTAAGTC-CCTGACCA_S01_L001_R2_001.fastq.gz"],
    "P_273_40" => ["/data/cqs/jennifer_pietenpol/20190905_3772/3772-LR-36-TCCGGACT-TTCAGTTG_S01_L001_R1_001.fastq.gz", "/data/cqs/jennifer_pietenpol/20190905_3772/3772-LR-36-TCCGGACT-TTCAGTTG_S01_L001_R2_001.fastq.gz"],
    "P_273_09" => ["/data/cqs/jennifer_pietenpol/20190905_3772/3772-LR-37-GGCCTTGC-CGCATTCC_S01_L001_R1_001.fastq.gz", "/data/cqs/jennifer_pietenpol/20190905_3772/3772-LR-37-GGCCTTGC-CGCATTCC_S01_L001_R2_001.fastq.gz"],
    "P_273_15" => ["/data/cqs/jennifer_pietenpol/20190905_3772/3772-LR-38-AATTCCAT-TATGCCTT_S01_L001_R1_001.fastq.gz", "/data/cqs/jennifer_pietenpol/20190905_3772/3772-LR-38-AATTCCAT-TATGCCTT_S01_L001_R2_001.fastq.gz"],
  },
  merge_fastq => 0,

  is_paired_end    => 1,
  perform_cutadapt => 1,
  cutadapt_option  => "-n 2 -O 1 -q 20 -a AGATCGGAAGAGCACACGTC -A AGATCGGAAGAGCGTCGTGT",
  min_read_length  => 30,

  covered_bed      => "/scratch/cqs/references/exomeseq/Twist/Twist_Exome_Target_hg38.slop50.bed",
  bwa_option => "",
  filter_soft_clip => 1,
  indel_realignment => 1,

  perform_gatk4_callvariants  => 1,
  gatk4_variant_filter_by_chromosome => 1,

  filter_variants_by_allele_frequency            => 1,
  filter_variants_by_allele_frequency_percentage => 0.9,
  filter_variants_by_allele_frequency_maf        => 0.3,

  filter_variants_fq_equal_1 => 1,

  annotation_genes    => "TP53 ATM BARD1 BRCA1 BRCA2 BRIP1 CDH1 CHEK2 MSH6 NBN NF1 PALB2 PTEN RAD51C RAD51D CDKN2A",
  #family_info_file    => "/scratch/cqs/shengq2/macrae_linton/20180913_linton_exomeseq_2118_human_cutadapt/linton_exomeseq_2118.pass.family.txt",
  #family_info_feature => "family",

  perform_cnv_gatk4_cohort => 1,
  gatk4_cnv_by_scatter => 1,
  gatk4_cnv_scatter_count => 100,

  perform_cnv_cnMOPs => 0,
  perform_vep        => 0,
  perform_cnv_xhmm              => 0,
  cnv_xhmm_preprocess_intervals => 0,

  perform_featureCounts => 0,
  saf_file => "/scratch/cqs/references/exomeseq/Twist/Twist_Exome_Target_hg38.slop50.name.saf",

  perform_dedup_fastq => 1,

  onco_options => {
    "BACKGROUND_color" => "lightgray",
    "MISSENSE_color" => "lightblue",
    "MISSENSE_height" => 0.75,
    "TRUNC_color" => "black",
    "TRUNC_height" => 0.45, 
    "DUP_color" => "red", 
    "DUP_height" => 0.25,
    "DEL_color" => "blue",
    "DEL_height" => 0.25,
    "MANUAL_order" => 1,
  },

  onco_sample_groups => {
    "CAL51"=> ["P_C08", "P_23B", "P_64B", "P_67B", "P_181", "P_196", "P_196F1", "P_196F2", "P_181F1", 
                         "P_175_09", "P_175_18", "P_175_10", "P_175_06", "P_12B", "P_38B", "P_31B", 
                         "P_09B", "P_42B", "P_60B", "P_56B", "P_273_22"],
    "MCF10A"=> ["P_C04", "P_175_27", "P_273_37", "P_273_38", "P_273_39", "P_273_40", "P_175_12", "P_175_19", "P_175_23", "P_175_33", 
                         "P_273_03", "P_273_09", "P_273_13", "P_273_15",  "P_273_21"]
  },
};

my $config = performExomeSeq_gatk_hg38( $def, 1 );

#performTask($config, "bwa_refine_nosoftclip_gatk4_SNV_02_vqsr_1_scatter");
#performTask($config, "bwa_refine_nosoftclip_gatk4_SNV_02_vqsr_2_recalibrator");
#performTask($config, "bwa_refine_nosoftclip_gatk4_SNV_02_vqsr_3_applyVQSR");
#performTask($config, "bwa_refine_nosoftclip_gatk4_SNV_02_vqsr_4_gather");
#performTask($config, "bwa_refine_nosoftclip_gatk4_CNV_Germline_05_GermlineCNVCaller_1_scatterIntervals");
#performTask($config, "bwa_refine_nosoftclip_gatk4_CNV_Germline_05_GermlineCNVCaller_2_scatterCall");
#performTask($config, "bwa_refine_nosoftclip_gatk4_CNV_Germline_06_PostprocessGermlineCNVCalls");
#performTask($config, "bwa_refine_nosoftclip_gatk4_CNV_Germline_09_CNVGenes");
#performTask($config, "bwa_refine_nosoftclip_gatk4_SNV_05_filter_geneannotation");
#performTask($config, "bwa_refine_nosoftclip_SNV_CNV_Oncoplot");

1;

