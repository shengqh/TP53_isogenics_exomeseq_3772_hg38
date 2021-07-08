
cd '/scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_CNV_Germline_04_DetermineGermlineContigPloidyCohortMode/result'

set -o pipefail


  

cd /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_CNV_Germline_04_DetermineGermlineContigPloidyCohortMode/result

export MKL_NUM_THREADS=1
export OMP_NUM_THREADS=1

gatk --java-options "-Xmx40G" DetermineGermlineContigPloidy  \
  -L /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_CNV_Germline_03_FilterIntervals/result/lindsay_exomeseq_3772.filtered.interval_list  \
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
  --contig-ploidy-priors /data/cqs/references/broad/hg38/contig_ploidy_priors_homo_sapiens.chr.tsv \
  --interval-merging-rule OVERLAPPING_ONLY \
  --output . \
  --output-prefix lindsay_exomeseq_3772 \
  --verbosity DEBUG  \
  --mean-bias-standard-deviation 0.01 \
  --mapping-error-rate 0.01 \
  --global-psi-scale 0.001 \
  --sample-psi-scale 0.0001

rm -rf .cache .conda .config .theano
