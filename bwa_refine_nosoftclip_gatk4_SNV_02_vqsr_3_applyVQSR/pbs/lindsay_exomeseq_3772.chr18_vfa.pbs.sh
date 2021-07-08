
cd '/scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_02_vqsr_3_applyVQSR/result'

set -o pipefail


  

if [[ ! -s lindsay_exomeseq_3772.chr18.indels.recal.tmp.vcf.gz ]]; then
  echo IndelApplyVQSR=`date`
  gatk --java-options "-Xmx10G" \
    ApplyVQSR \
    -O lindsay_exomeseq_3772.chr18.indels.recal.tmp.vcf.gz \
    -V /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_02_vqsr_1_scatter/result/lindsay_exomeseq_3772.chr18.variant_filtered.vcf.gz \
    --recal-file /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_02_vqsr_2_recalibrator/result/lindsay_exomeseq_3772.indels.recal.vcf.gz \
    --tranches-file /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_02_vqsr_2_recalibrator/result/lindsay_exomeseq_3772.indels.tranches \
    --truth-sensitivity-filter-level 99.7 \
    --create-output-variant-index true \
    -mode INDEL
fi

if [[ -s /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_02_vqsr_2_recalibrator/result/lindsay_exomeseq_3772.snp.recal.vcf.gz && ! -s lindsay_exomeseq_3772.chr18.indels.snp.recal.vcf.gz ]]; then
  echo SnpApplyVQSR=`date`
  gatk --java-options "-Xmx10G" \
    ApplyVQSR \
    -O lindsay_exomeseq_3772.chr18.indels.snp.recal.vcf.gz \
    -V lindsay_exomeseq_3772.chr18.indels.recal.tmp.vcf.gz \
    --recal-file /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_02_vqsr_2_recalibrator/result/lindsay_exomeseq_3772.snp.recal.vcf.gz \
    --tranches-file /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_02_vqsr_2_recalibrator/result/lindsay_exomeseq_3772.snp.tranches \
    --truth-sensitivity-filter-level 99.7 \
    --create-output-variant-index true \
    -mode SNP
fi

if [[ -s lindsay_exomeseq_3772.chr18.indels.snp.recal.vcf.gz && ! -s lindsay_exomeseq_3772.chr18.indels.snp.recal.pass.vcf.gz ]]; then
  echo SelectVariant=`date`
  gatk --java-options "-Xmx10G" \
    SelectVariants \
    -O lindsay_exomeseq_3772.chr18.indels.snp.recal.pass.vcf.gz \
    -V lindsay_exomeseq_3772.chr18.indels.snp.recal.vcf.gz \
    --exclude-filtered
fi


if [[ -s lindsay_exomeseq_3772.chr18.indels.snp.recal.pass.vcf.gz ]]; then
  rm -rf lindsay_exomeseq_3772.chr18.indels.snp.recal.vcf.gz lindsay_exomeseq_3772.chr18.indels.snp.recal.vcf.gz.tbi \
    lindsay_exomeseq_3772.chr18.indels.recal.tmp.vcf.gz lindsay_exomeseq_3772.chr18.indels.recal.tmp.vcf.gz.tbi \
    .conda
fi

