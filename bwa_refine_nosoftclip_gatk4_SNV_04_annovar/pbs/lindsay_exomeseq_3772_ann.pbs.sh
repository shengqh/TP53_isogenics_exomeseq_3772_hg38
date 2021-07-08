
cd '/scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_04_annovar/result/lindsay_exomeseq_3772'

set -o pipefail



if [[ ! -s lindsay_exomeseq_3772.maf_filtered.annovar.hg38_multianno.txt && ! -s lindsay_exomeseq_3772.maf_filtered.annovar.final.tsv ]]; then 
  convert2annovar.pl -format vcf4old /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_03_filterMAF/result/lindsay_exomeseq_3772.maf_filtered.vcf.gz | cut -f1-7 | awk '{gsub(",\\*", "", $0); print}'> lindsay_exomeseq_3772.maf_filtered.avinput 
  if [ -s lindsay_exomeseq_3772.maf_filtered.avinput ]; then
    table_annovar.pl lindsay_exomeseq_3772.maf_filtered.avinput /data/cqs/references/annovar/humandb/ -buildver hg38 -protocol refGene,avsnp150,cosmic70,exac03,1000g2015aug_all,1000g2015aug_afr,1000g2015aug_amr,1000g2015aug_eas,1000g2015aug_eur,1000g2015aug_sas,gnomad211_genome,clinvar_20190305 -operation g,f,f,f,f,f,f,f,f,f,f,f --remove --outfile lindsay_exomeseq_3772.maf_filtered.annovar --remove
  fi
fi

echo find_protein_position_for_splicing=`date`
if [[ -s lindsay_exomeseq_3772.maf_filtered.annovar.hg38_multianno.txt && ! -s lindsay_exomeseq_3772.maf_filtered.annovar.splicing.hg38_multianno.txt ]]; then 
  python3 /data/cqs/softwares/ngsperl/lib/Annotation/annovarSplicing.py -i lindsay_exomeseq_3772.maf_filtered.annovar.hg38_multianno.txt -d /data/cqs/references/annovar/humandb/ -o lindsay_exomeseq_3772.maf_filtered.annovar.splicing.hg38_multianno.txt -b hg38 
fi

if [[ -s lindsay_exomeseq_3772.maf_filtered.annovar.splicing.hg38_multianno.txt && ! -s lindsay_exomeseq_3772.maf_filtered.annovar.final.tsv ]]; then
  sed -n '/^[^#]/q;p' /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_03_filterMAF/result/lindsay_exomeseq_3772.maf_filtered.vcf.gz|sed '$ d' > lindsay_exomeseq_3772.maf_filtered.annovar.final.tsv.header
  zcat /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_03_filterMAF/result/lindsay_exomeseq_3772.maf_filtered.vcf.gz | grep -v "^##" | cut -f7- > /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_03_filterMAF/result/lindsay_exomeseq_3772.maf_filtered.vcf.gz.clean
  grep -v "^##" lindsay_exomeseq_3772.maf_filtered.annovar.splicing.hg38_multianno.txt > lindsay_exomeseq_3772.maf_filtered.annovar.splicing.hg38_multianno.txt.clean
  paste lindsay_exomeseq_3772.maf_filtered.annovar.splicing.hg38_multianno.txt.clean /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_03_filterMAF/result/lindsay_exomeseq_3772.maf_filtered.vcf.gz.clean > lindsay_exomeseq_3772.maf_filtered.annovar.final.tsv.data
  cat lindsay_exomeseq_3772.maf_filtered.annovar.final.tsv.header lindsay_exomeseq_3772.maf_filtered.annovar.final.tsv.data > lindsay_exomeseq_3772.maf_filtered.annovar.final.tsv
  rm /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_03_filterMAF/result/lindsay_exomeseq_3772.maf_filtered.vcf.gz.clean lindsay_exomeseq_3772.maf_filtered.annovar.splicing.hg38_multianno.txt.clean lindsay_exomeseq_3772.maf_filtered.annovar.final.tsv.header lindsay_exomeseq_3772.maf_filtered.annovar.final.tsv.data
fi
