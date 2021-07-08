
cd '/scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_CNV_Germline_07_CombineGCNV/result'

set -o pipefail





python3 /data/cqs/softwares/ngsperl/lib/CQS/../GATK4/combineGCNV.py   -b /scratch/cqs/references/exomeseq/Twist/Twist_Exome_Target_hg38.slop50.bed --annovar_db /data/cqs/references/annovar/humandb/ --annovar_buildver hg38 -i lindsay_exomeseq_3772__fileList1.list -o lindsay_exomeseq_3772.txt
