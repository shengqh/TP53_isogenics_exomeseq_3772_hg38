
cd '/scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_CNV_Germline_08_SizeFactor/result'

set -o pipefail





python3 /data/cqs/softwares/ngsperl/lib/CQS/../GATK4/getBackgroundCount.py   -i /scratch/cqs/references/exomeseq/Twist/Twist_Exome_Target_hg38.slop50.bed -c /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_CNV_Germline_07_CombineGCNV/result/lindsay_exomeseq_3772.txt -b lindsay_exomeseq_3772__fileList1.list -o lindsay_exomeseq_3772.txt.sizefactor
