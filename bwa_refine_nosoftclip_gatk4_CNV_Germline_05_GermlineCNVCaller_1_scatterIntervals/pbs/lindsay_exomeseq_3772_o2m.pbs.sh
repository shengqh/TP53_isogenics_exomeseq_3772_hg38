
cd '/scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_CNV_Germline_05_GermlineCNVCaller_1_scatterIntervals/result'

set -o pipefail



python3 /data/cqs/softwares/ngsperl/lib/CQS/../GATK4/scatterIntervals.py  -n 100  -i /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_CNV_Germline_03_FilterIntervals/result/lindsay_exomeseq_3772.filtered.interval_list   -o lindsay_exomeseq_3772

