
cd '/scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_CNV_Germline_03_FilterIntervals/result'

set -o pipefail


  
export HOME=/scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_CNV_Germline_03_FilterIntervals/result
export PYTHONPATH=

source activate gatk

cd /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_CNV_Germline_03_FilterIntervals/result
gatk --java-options "-Xmx40G" AnnotateIntervals \
  -L /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_CNV_Germline_01_PreprocessIntervals/result/lindsay_exomeseq_3772.preprocessed.interval_list -XL /data/cqs/references/blacklist_files/hg38-blacklist.v2.bed \
  -R /data/cqs/references/broad/hg38/v0/Homo_sapiens_assembly38.fasta \
  -imr OVERLAPPING_ONLY \
  -O lindsay_exomeseq_3772.annotated.tsv

gatk --java-options "-Xmx40G" FilterIntervals  \
  -L /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_CNV_Germline_01_PreprocessIntervals/result/lindsay_exomeseq_3772.preprocessed.interval_list -XL /data/cqs/references/blacklist_files/hg38-blacklist.v2.bed  \
  --input /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_CNV_Germline_02_CollectReadCounts/result/P_09B.count.hdf5 \
  --input /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_CNV_Germline_02_CollectReadCounts/result/P_12B.count.hdf5 \
  --input /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_CNV_Germline_02_CollectReadCounts/result/P_175_06.count.hdf5 \
  --input /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_CNV_Germline_02_CollectReadCounts/result/P_175_09.count.hdf5 \
  --input /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_CNV_Germline_02_CollectReadCounts/result/P_175_10.count.hdf5 \
  --input /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_CNV_Germline_02_CollectReadCounts/result/P_175_12.count.hdf5 \
  --input /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_CNV_Germline_02_CollectReadCounts/result/P_175_18.count.hdf5 \
  --input /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_CNV_Germline_02_CollectReadCounts/result/P_175_19.count.hdf5 \
  --input /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_CNV_Germline_02_CollectReadCounts/result/P_175_23.count.hdf5 \
  --input /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_CNV_Germline_02_CollectReadCounts/result/P_175_27.count.hdf5 \
  --input /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_CNV_Germline_02_CollectReadCounts/result/P_175_33.count.hdf5 \
  --input /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_CNV_Germline_02_CollectReadCounts/result/P_181.count.hdf5 \
  --input /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_CNV_Germline_02_CollectReadCounts/result/P_181F1.count.hdf5 \
  --input /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_CNV_Germline_02_CollectReadCounts/result/P_196.count.hdf5 \
  --input /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_CNV_Germline_02_CollectReadCounts/result/P_196F1.count.hdf5 \
  --input /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_CNV_Germline_02_CollectReadCounts/result/P_196F2.count.hdf5 \
  --input /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_CNV_Germline_02_CollectReadCounts/result/P_23B.count.hdf5 \
  --input /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_CNV_Germline_02_CollectReadCounts/result/P_273_03.count.hdf5 \
  --input /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_CNV_Germline_02_CollectReadCounts/result/P_273_09.count.hdf5 \
  --input /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_CNV_Germline_02_CollectReadCounts/result/P_273_13.count.hdf5 \
  --input /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_CNV_Germline_02_CollectReadCounts/result/P_273_15.count.hdf5 \
  --input /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_CNV_Germline_02_CollectReadCounts/result/P_273_21.count.hdf5 \
  --input /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_CNV_Germline_02_CollectReadCounts/result/P_273_22.count.hdf5 \
  --input /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_CNV_Germline_02_CollectReadCounts/result/P_273_37.count.hdf5 \
  --input /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_CNV_Germline_02_CollectReadCounts/result/P_273_38.count.hdf5 \
  --input /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_CNV_Germline_02_CollectReadCounts/result/P_273_39.count.hdf5 \
  --input /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_CNV_Germline_02_CollectReadCounts/result/P_273_40.count.hdf5 \
  --input /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_CNV_Germline_02_CollectReadCounts/result/P_31B.count.hdf5 \
  --input /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_CNV_Germline_02_CollectReadCounts/result/P_38B.count.hdf5 \
  --input /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_CNV_Germline_02_CollectReadCounts/result/P_42B.count.hdf5 \
  --input /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_CNV_Germline_02_CollectReadCounts/result/P_56B.count.hdf5 \
  --input /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_CNV_Germline_02_CollectReadCounts/result/P_60B.count.hdf5 \
  --input /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_CNV_Germline_02_CollectReadCounts/result/P_64B.count.hdf5 \
  --input /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_CNV_Germline_02_CollectReadCounts/result/P_67B.count.hdf5 \
  --input /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_CNV_Germline_02_CollectReadCounts/result/P_C04.count.hdf5 \
  --input /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_CNV_Germline_02_CollectReadCounts/result/P_C08.count.hdf5 \
  --annotated-intervals lindsay_exomeseq_3772.annotated.tsv \
  --interval-merging-rule OVERLAPPING_ONLY  \
  --minimum-gc-content 0.1 \
  --maximum-gc-content 0.9 \
  --minimum-mappability 0.9 \
  --maximum-mappability 1.0 \
  --minimum-segmental-duplication-content 0.0 \
  --maximum-segmental-duplication-content 0.5 \
  --low-count-filter-count-threshold 5 \
  --low-count-filter-percentage-of-samples 90.0 \
  --extreme-count-filter-minimum-percentile 1 \
  --extreme-count-filter-maximum-percentile 99.0 \
  --extreme-count-filter-percentage-of-samples 90.0 \
  --output lindsay_exomeseq_3772.filtered.all.interval_list

python3 /data/cqs/softwares/ngsperl/lib/GATK4/filterIntervals.py -i lindsay_exomeseq_3772.filtered.all.interval_list -o lindsay_exomeseq_3772.filtered.interval_list

#rm lindsay_exomeseq_3772.filtered.all.interval_list
