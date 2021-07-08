
cd '/scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_02_vqsr_2_recalibrator/result'

set -o pipefail


  
if [ ! -s lindsay_exomeseq_3772.variant_filtered.sites_only.vcf.gz ]; then
  echo GatherVcfsCloud=`date` 
  gatk --java-options "-Xmx10G" \
    GatherVcfsCloud \
    --ignore-safety-checks \
    --gather-type BLOCK \
    -I /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_02_vqsr_1_scatter/result/lindsay_exomeseq_3772.chr1.variant_filtered.vcf.gz \
    -I /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_02_vqsr_1_scatter/result/lindsay_exomeseq_3772.chr2.variant_filtered.vcf.gz \
    -I /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_02_vqsr_1_scatter/result/lindsay_exomeseq_3772.chr3.variant_filtered.vcf.gz \
    -I /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_02_vqsr_1_scatter/result/lindsay_exomeseq_3772.chr4.variant_filtered.vcf.gz \
    -I /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_02_vqsr_1_scatter/result/lindsay_exomeseq_3772.chr5.variant_filtered.vcf.gz \
    -I /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_02_vqsr_1_scatter/result/lindsay_exomeseq_3772.chr6.variant_filtered.vcf.gz \
    -I /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_02_vqsr_1_scatter/result/lindsay_exomeseq_3772.chr7.variant_filtered.vcf.gz \
    -I /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_02_vqsr_1_scatter/result/lindsay_exomeseq_3772.chr8.variant_filtered.vcf.gz \
    -I /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_02_vqsr_1_scatter/result/lindsay_exomeseq_3772.chr9.variant_filtered.vcf.gz \
    -I /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_02_vqsr_1_scatter/result/lindsay_exomeseq_3772.chr10.variant_filtered.vcf.gz \
    -I /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_02_vqsr_1_scatter/result/lindsay_exomeseq_3772.chr11.variant_filtered.vcf.gz \
    -I /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_02_vqsr_1_scatter/result/lindsay_exomeseq_3772.chr12.variant_filtered.vcf.gz \
    -I /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_02_vqsr_1_scatter/result/lindsay_exomeseq_3772.chr13.variant_filtered.vcf.gz \
    -I /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_02_vqsr_1_scatter/result/lindsay_exomeseq_3772.chr14.variant_filtered.vcf.gz \
    -I /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_02_vqsr_1_scatter/result/lindsay_exomeseq_3772.chr15.variant_filtered.vcf.gz \
    -I /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_02_vqsr_1_scatter/result/lindsay_exomeseq_3772.chr16.variant_filtered.vcf.gz \
    -I /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_02_vqsr_1_scatter/result/lindsay_exomeseq_3772.chr17.variant_filtered.vcf.gz \
    -I /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_02_vqsr_1_scatter/result/lindsay_exomeseq_3772.chr18.variant_filtered.vcf.gz \
    -I /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_02_vqsr_1_scatter/result/lindsay_exomeseq_3772.chr19.variant_filtered.vcf.gz \
    -I /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_02_vqsr_1_scatter/result/lindsay_exomeseq_3772.chr20.variant_filtered.vcf.gz \
    -I /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_02_vqsr_1_scatter/result/lindsay_exomeseq_3772.chr21.variant_filtered.vcf.gz \
    -I /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_02_vqsr_1_scatter/result/lindsay_exomeseq_3772.chr22.variant_filtered.vcf.gz \
    -I /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_02_vqsr_1_scatter/result/lindsay_exomeseq_3772.chrX.variant_filtered.vcf.gz \
    -I /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_02_vqsr_1_scatter/result/lindsay_exomeseq_3772.chrY.variant_filtered.vcf.gz \
    -I /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_02_vqsr_1_scatter/result/lindsay_exomeseq_3772.chrM.variant_filtered.vcf.gz \
    -O lindsay_exomeseq_3772.variant_filtered.sites_only.vcf.gz

  tabix -p vcf lindsay_exomeseq_3772.variant_filtered.sites_only.vcf.gz
fi

if [[ -s lindsay_exomeseq_3772.variant_filtered.sites_only.vcf.gz && ! -s lindsay_exomeseq_3772.indels.recal.vcf.gz ]]; then
  echo IndelVariantRecalibrator=`date`
  gatk --java-options "-Xmx10G" \
    VariantRecalibrator \
    -V lindsay_exomeseq_3772.variant_filtered.sites_only.vcf.gz \
    -O lindsay_exomeseq_3772.indels.recal.vcf.gz \
    --tranches-file lindsay_exomeseq_3772.indels.tranches \
    --trust-all-polymorphic \
    -tranche 100.0 \
    -tranche 99.95 \
    -tranche 99.9 \
    -tranche 99.5 \
    -tranche 99.0 \
    -tranche 97.0 \
    -tranche 96.0 \
    -tranche 95.0 \
    -tranche 94.0 \
    -tranche 93.5 \
    -tranche 93.0 \
    -tranche 92.0 \
    -tranche 91.0 \
    -tranche 90.0 \
    -an QD \
    -an MQRankSum \
    -an ReadPosRankSum \
    -an FS \
    -an MQ \
    -an SOR \
    -an DP \
    --max-gaussians 4 \
    --resource:mills,known=false,training=true,truth=true,prior=12 /data/cqs/references/broad/hg38/v0/Mills_and_1000G_gold_standard.indels.hg38.vcf.gz \
     --resource:axiomPoly,known=false,training=true,truth=false,prior=10 /data/cqs/references/broad/hg38/v0/Axiom_Exome_Plus.genotypes.all_populations.poly.hg38.vcf.gz \
     --resource:dbsnp,known=true,training=false,truth=false,prior=2 /data/cqs/references/broad/hg38/v0/Homo_sapiens_assembly38.dbsnp138.vcf.gz \
     -mode INDEL 
fi

if [[ -s lindsay_exomeseq_3772.variant_filtered.sites_only.vcf.gz && ! -s lindsay_exomeseq_3772.snp.recal.vcf.gz ]]; then
  echo SnpVariantRecalibrator=`date`
  gatk --java-options "-Xmx10G" \
    VariantRecalibrator \
    -V lindsay_exomeseq_3772.variant_filtered.sites_only.vcf.gz \
    -O lindsay_exomeseq_3772.snp.recal.vcf.gz \
    --tranches-file lindsay_exomeseq_3772.snp.tranches \
    --trust-all-polymorphic \
    -tranche 100.0 \
    -tranche 99.95 \
    -tranche 99.9 \
    -tranche 99.8 \
    -tranche 99.6 \
    -tranche 99.5 \
    -tranche 99.4 \
    -tranche 99.3 \
    -tranche 99.0 \
    -tranche 98.0 \
    -tranche 97.0 \
    -tranche 90.0 \
    -an QD \
    -an MQRankSum \
    -an ReadPosRankSum \
    -an FS \
    -an MQ \
    -an SOR \
    -an DP \
    --max-gaussians 6 \
    --resource:hapmap,known=false,training=true,truth=true,prior=15 /data/cqs/references/broad/hg38/v0/hapmap_3.3.hg38.vcf.gz \
     --resource:omni,known=false,training=true,truth=true,prior=12 /data/cqs/references/broad/hg38/v0/1000G_omni2.5.hg38.vcf.gz \
     --resource:1000G,known=false,training=true,truth=false,prior=10 /data/cqs/references/broad/hg38/v0/1000G_phase1.snps.high_confidence.hg38.vcf.gz \
     --resource:dbsnp,known=true,training=false,truth=false,prior=2 /data/cqs/references/broad/hg38/v0/Homo_sapiens_assembly38.dbsnp138.vcf.gz \
     -mode SNP
fi

rm -rf .conda

