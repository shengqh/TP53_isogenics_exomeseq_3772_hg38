
cd '/scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_01_hc_gvcf/result'

set -o pipefail



gatk --java-options "-Xmx40G" \
  HaplotypeCaller  -ERC GVCF -L /scratch/cqs/references/exomeseq/Twist/Twist_Exome_Target_hg38.slop50.bed -XL /data/cqs/references/blacklist_files/hg38-blacklist.v2.bed \
  --native-pair-hmm-threads 8 \
  -R /data/cqs/references/broad/hg38/v0/bwa_index_0.7.17/Homo_sapiens_assembly38.fasta \
  -I /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip/result/P_175_33.nosoftclip.bam \
  -O P_175_33.tmp.g.vcf.gz

if [[ -s P_175_33.tmp.g.vcf.gz.tbi ]]; then
  mv P_175_33.tmp.g.vcf.gz P_175_33.g.vcf.gz
  mv P_175_33.tmp.g.vcf.gz.tbi P_175_33.g.vcf.gz.tbi
fi
