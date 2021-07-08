
cd '/scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_CNV_Germline_01_PreprocessIntervals/result'

set -o pipefail


  

cd /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_CNV_Germline_01_PreprocessIntervals/result

gatk --java-options "-Xmx20G" PreprocessIntervals  \
  -L /scratch/cqs/references/exomeseq/Twist/Twist_Exome_Target_hg38.slop50.bed  \
  --sequence-dictionary /data/cqs/references/broad/hg38/v0/Homo_sapiens_assembly38.dict \
  --reference /data/cqs/references/broad/hg38/v0/Homo_sapiens_assembly38.fasta \
  --interval-merging-rule OVERLAPPING_ONLY  \
  --output lindsay_exomeseq_3772.preprocessed.interval_list
  
rm -rf .conda

