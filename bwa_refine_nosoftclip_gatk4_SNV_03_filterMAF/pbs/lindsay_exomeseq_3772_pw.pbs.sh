
cd '/scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_03_filterMAF/result'

set -o pipefail





python3 /data/cqs/softwares/ngsperl/lib/CQS/../Annotation/filterVcf.py -p 0.9 -f 0.3  -i /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_02_vqsr_4_gather/result/lindsay_exomeseq_3772.indels.snp.recal.pass.norm.nospan.vcf.gz   -o lindsay_exomeseq_3772.maf_filtered.vcf.gz
