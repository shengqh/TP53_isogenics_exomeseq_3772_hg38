
cd '/scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_02_vqsr_4_gather/result'

set -o pipefail


  
if [ ! -s lindsay_exomeseq_3772.indels.snp.recal.pass.vcf.gz ]; then
  echo GatherVcfsCloud=`date` 
  gatk --java-options "-Xmx10G" \
    GatherVcfsCloud \
    --ignore-safety-checks \
    --gather-type BLOCK \
    -I /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_02_vqsr_3_applyVQSR/result/lindsay_exomeseq_3772.chr1.indels.snp.recal.pass.vcf.gz \
    -I /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_02_vqsr_3_applyVQSR/result/lindsay_exomeseq_3772.chr2.indels.snp.recal.pass.vcf.gz \
    -I /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_02_vqsr_3_applyVQSR/result/lindsay_exomeseq_3772.chr3.indels.snp.recal.pass.vcf.gz \
    -I /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_02_vqsr_3_applyVQSR/result/lindsay_exomeseq_3772.chr4.indels.snp.recal.pass.vcf.gz \
    -I /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_02_vqsr_3_applyVQSR/result/lindsay_exomeseq_3772.chr5.indels.snp.recal.pass.vcf.gz \
    -I /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_02_vqsr_3_applyVQSR/result/lindsay_exomeseq_3772.chr6.indels.snp.recal.pass.vcf.gz \
    -I /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_02_vqsr_3_applyVQSR/result/lindsay_exomeseq_3772.chr7.indels.snp.recal.pass.vcf.gz \
    -I /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_02_vqsr_3_applyVQSR/result/lindsay_exomeseq_3772.chr8.indels.snp.recal.pass.vcf.gz \
    -I /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_02_vqsr_3_applyVQSR/result/lindsay_exomeseq_3772.chr9.indels.snp.recal.pass.vcf.gz \
    -I /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_02_vqsr_3_applyVQSR/result/lindsay_exomeseq_3772.chr10.indels.snp.recal.pass.vcf.gz \
    -I /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_02_vqsr_3_applyVQSR/result/lindsay_exomeseq_3772.chr11.indels.snp.recal.pass.vcf.gz \
    -I /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_02_vqsr_3_applyVQSR/result/lindsay_exomeseq_3772.chr12.indels.snp.recal.pass.vcf.gz \
    -I /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_02_vqsr_3_applyVQSR/result/lindsay_exomeseq_3772.chr13.indels.snp.recal.pass.vcf.gz \
    -I /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_02_vqsr_3_applyVQSR/result/lindsay_exomeseq_3772.chr14.indels.snp.recal.pass.vcf.gz \
    -I /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_02_vqsr_3_applyVQSR/result/lindsay_exomeseq_3772.chr15.indels.snp.recal.pass.vcf.gz \
    -I /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_02_vqsr_3_applyVQSR/result/lindsay_exomeseq_3772.chr16.indels.snp.recal.pass.vcf.gz \
    -I /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_02_vqsr_3_applyVQSR/result/lindsay_exomeseq_3772.chr17.indels.snp.recal.pass.vcf.gz \
    -I /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_02_vqsr_3_applyVQSR/result/lindsay_exomeseq_3772.chr18.indels.snp.recal.pass.vcf.gz \
    -I /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_02_vqsr_3_applyVQSR/result/lindsay_exomeseq_3772.chr19.indels.snp.recal.pass.vcf.gz \
    -I /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_02_vqsr_3_applyVQSR/result/lindsay_exomeseq_3772.chr20.indels.snp.recal.pass.vcf.gz \
    -I /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_02_vqsr_3_applyVQSR/result/lindsay_exomeseq_3772.chr21.indels.snp.recal.pass.vcf.gz \
    -I /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_02_vqsr_3_applyVQSR/result/lindsay_exomeseq_3772.chr22.indels.snp.recal.pass.vcf.gz \
    -I /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_02_vqsr_3_applyVQSR/result/lindsay_exomeseq_3772.chrX.indels.snp.recal.pass.vcf.gz \
    -I /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_02_vqsr_3_applyVQSR/result/lindsay_exomeseq_3772.chrY.indels.snp.recal.pass.vcf.gz \
    -I /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_02_vqsr_3_applyVQSR/result/lindsay_exomeseq_3772.chrM.indels.snp.recal.pass.vcf.gz \
    -O lindsay_exomeseq_3772.indels.snp.recal.pass.vcf.gz

  tabix -p vcf lindsay_exomeseq_3772.indels.snp.recal.pass.vcf.gz
fi

if [[ -s lindsay_exomeseq_3772.indels.snp.recal.pass.vcf.gz && ! -s lindsay_exomeseq_3772.norm.vcf ]]; then
  echo LeftAlignAndNorm=`date`
  bcftools norm -m- -o lindsay_exomeseq_3772.split.vcf lindsay_exomeseq_3772.indels.snp.recal.pass.vcf.gz 
  bcftools norm -f /data/cqs/references/broad/hg38/v0/bwa_index_0.7.17/Homo_sapiens_assembly38.fasta -o lindsay_exomeseq_3772.norm.vcf lindsay_exomeseq_3772.split.vcf 
fi

if [[ -s lindsay_exomeseq_3772.norm.vcf && ! -s lindsay_exomeseq_3772.indels.snp.recal.pass.norm.nospan.vcf.gz ]]; then
  echo noSpanDeletion=`date`
  python3 /data/cqs/softwares/ngsperl/lib/GATK4/fixLeftTrimDeletion.py -i lindsay_exomeseq_3772.norm.vcf -o lindsay_exomeseq_3772.indels.snp.recal.pass.norm.nospan.vcf
  bgzip lindsay_exomeseq_3772.indels.snp.recal.pass.norm.nospan.vcf
  tabix -p vcf lindsay_exomeseq_3772.indels.snp.recal.pass.norm.nospan.vcf.gz
fi

if [[ -s lindsay_exomeseq_3772.indels.snp.recal.pass.norm.nospan.vcf.gz ]]; then
  rm -rf lindsay_exomeseq_3772.split.vcf lindsay_exomeseq_3772.norm.vcf \
    .conda
fi

