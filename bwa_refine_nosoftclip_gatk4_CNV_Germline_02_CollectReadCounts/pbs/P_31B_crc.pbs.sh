
cd '/scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_CNV_Germline_02_CollectReadCounts/result'

set -o pipefail


  

cd /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_CNV_Germline_02_CollectReadCounts/result

gatk --java-options "-Xmx40G" CollectReadCounts  \
  -L /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_CNV_Germline_01_PreprocessIntervals/result/lindsay_exomeseq_3772.preprocessed.interval_list \
  --input /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip/result/P_31B.nosoftclip.bam \
  --reference /data/cqs/references/broad/hg38/v0/Homo_sapiens_assembly38.fasta \
  --format HDF5 \
  --interval-merging-rule OVERLAPPING_ONLY \
  --output P_31B.count.hdf5
            
rm -rf .cache .conda .config .theano
