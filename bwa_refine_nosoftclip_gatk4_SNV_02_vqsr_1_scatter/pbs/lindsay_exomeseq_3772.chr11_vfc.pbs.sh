
cd '/scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_02_vqsr_1_scatter/result'

set -o pipefail


  
if [ ! -s lindsay_exomeseq_3772.chr11.merged.vcf.gz ]; then
  echo CombineGVCFs=`date` 
  gatk --java-options "-Xmx40G" \
    CombineGVCFs \
    -R /data/cqs/references/broad/hg38/v0/bwa_index_0.7.17/Homo_sapiens_assembly38.fasta  -L chr11 \
      -V /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_01_hc_gvcf/result/P_09B.g.vcf.gz \
      -V /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_01_hc_gvcf/result/P_12B.g.vcf.gz \
      -V /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_01_hc_gvcf/result/P_175_06.g.vcf.gz \
      -V /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_01_hc_gvcf/result/P_175_09.g.vcf.gz \
      -V /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_01_hc_gvcf/result/P_175_10.g.vcf.gz \
      -V /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_01_hc_gvcf/result/P_175_12.g.vcf.gz \
      -V /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_01_hc_gvcf/result/P_175_18.g.vcf.gz \
      -V /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_01_hc_gvcf/result/P_175_19.g.vcf.gz \
      -V /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_01_hc_gvcf/result/P_175_23.g.vcf.gz \
      -V /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_01_hc_gvcf/result/P_175_27.g.vcf.gz \
      -V /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_01_hc_gvcf/result/P_175_33.g.vcf.gz \
      -V /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_01_hc_gvcf/result/P_181.g.vcf.gz \
      -V /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_01_hc_gvcf/result/P_181F1.g.vcf.gz \
      -V /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_01_hc_gvcf/result/P_196.g.vcf.gz \
      -V /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_01_hc_gvcf/result/P_196F1.g.vcf.gz \
      -V /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_01_hc_gvcf/result/P_196F2.g.vcf.gz \
      -V /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_01_hc_gvcf/result/P_23B.g.vcf.gz \
      -V /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_01_hc_gvcf/result/P_273_03.g.vcf.gz \
      -V /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_01_hc_gvcf/result/P_273_09.g.vcf.gz \
      -V /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_01_hc_gvcf/result/P_273_13.g.vcf.gz \
      -V /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_01_hc_gvcf/result/P_273_15.g.vcf.gz \
      -V /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_01_hc_gvcf/result/P_273_21.g.vcf.gz \
      -V /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_01_hc_gvcf/result/P_273_22.g.vcf.gz \
      -V /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_01_hc_gvcf/result/P_273_37.g.vcf.gz \
      -V /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_01_hc_gvcf/result/P_273_38.g.vcf.gz \
      -V /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_01_hc_gvcf/result/P_273_39.g.vcf.gz \
      -V /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_01_hc_gvcf/result/P_273_40.g.vcf.gz \
      -V /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_01_hc_gvcf/result/P_31B.g.vcf.gz \
      -V /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_01_hc_gvcf/result/P_38B.g.vcf.gz \
      -V /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_01_hc_gvcf/result/P_42B.g.vcf.gz \
      -V /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_01_hc_gvcf/result/P_56B.g.vcf.gz \
      -V /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_01_hc_gvcf/result/P_60B.g.vcf.gz \
      -V /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_01_hc_gvcf/result/P_64B.g.vcf.gz \
      -V /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_01_hc_gvcf/result/P_67B.g.vcf.gz \
      -V /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_01_hc_gvcf/result/P_C04.g.vcf.gz \
      -V /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_01_hc_gvcf/result/P_C08.g.vcf.gz \
      -O lindsay_exomeseq_3772.chr11.merged.vcf.gz
fi

if [[ -s lindsay_exomeseq_3772.chr11.merged.vcf.gz && ! -s lindsay_exomeseq_3772.chr11.raw.vcf.gz ]]; then
  echo GenotypeGVCFs=`date` 
  gatk --java-options "-Xmx40G" \
    GenotypeGVCFs \
    -R /data/cqs/references/broad/hg38/v0/bwa_index_0.7.17/Homo_sapiens_assembly38.fasta \
    -D /data/cqs/references/broad/hg38/v0/Homo_sapiens_assembly38.dbsnp138.vcf.gz \
    -O lindsay_exomeseq_3772.chr11.raw.vcf.gz \
    -V lindsay_exomeseq_3772.chr11.merged.vcf.gz 
fi

if [[ -s lindsay_exomeseq_3772.chr11.raw.vcf.gz && ! -s lindsay_exomeseq_3772.chr11.variant_filtered.vcf.gz ]]; then
  echo VariantFiltration=`date` 
  gatk --java-options "-Xmx40G" \
    VariantFiltration \
    --filter-expression "ExcessHet > 54.69" \
    --filter-name ExcessHet \
    -O lindsay_exomeseq_3772.chr11.variant_filtered.vcf.gz \
    -V lindsay_exomeseq_3772.chr11.raw.vcf.gz
fi

if [[ -s lindsay_exomeseq_3772.chr11.variant_filtered.vcf.gz && ! -s lindsay_exomeseq_3772.chr11.variant_filtered.sites_only.vcf.gz ]]; then
  echo MakeSitesOnlyVcf=`date` 
  gatk --java-options "-Xmx40G" \
    MakeSitesOnlyVcf \
    --INPUT lindsay_exomeseq_3772.chr11.variant_filtered.vcf.gz \
    --OUTPUT lindsay_exomeseq_3772.chr11.variant_filtered.sites_only.vcf.gz
fi

if [[ -s lindsay_exomeseq_3772.chr11.variant_filtered.sites_only.vcf.gz ]]; then
  rm lindsay_exomeseq_3772.chr11.merged.vcf.gz lindsay_exomeseq_3772.chr11.merged.vcf.gz.tbi \
    lindsay_exomeseq_3772.chr11.raw.vcf.gz lindsay_exomeseq_3772.chr11.raw.vcf.gz.tbi .conda
fi

