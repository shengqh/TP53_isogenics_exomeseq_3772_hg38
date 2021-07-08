
cd '/scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_06_toMAF/result'

set -o pipefail



Rscript --vanilla /data/cqs/softwares/ngsperl/lib/Annotation/annovar2maf.r /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_05_filter/result/lindsay_exomeseq_3772.freq0.001.filtered.tsv lindsay_exomeseq_3772.freq0.001.filtered.tsv.tmp hg38
  
if [[ -s lindsay_exomeseq_3772.freq0.001.filtered.tsv.tmp ]]; then
  python3 /data/cqs/softwares/ngsperl/lib/Annotation/annovar2maf.py -i lindsay_exomeseq_3772.freq0.001.filtered.tsv.tmp -o lindsay_exomeseq_3772.freq0.001.filtered.tsv.maf
fi

if [[ -s lindsay_exomeseq_3772.freq0.001.filtered.tsv.maf ]]; then
  rm lindsay_exomeseq_3772.freq0.001.filtered.tsv.tmp
fi


Rscript --vanilla /data/cqs/softwares/ngsperl/lib/Annotation/annovar2maf.r /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_05_filter/result/lindsay_exomeseq_3772.freq0.01.filtered.tsv lindsay_exomeseq_3772.freq0.01.filtered.tsv.tmp hg38
  
if [[ -s lindsay_exomeseq_3772.freq0.01.filtered.tsv.tmp ]]; then
  python3 /data/cqs/softwares/ngsperl/lib/Annotation/annovar2maf.py -i lindsay_exomeseq_3772.freq0.01.filtered.tsv.tmp -o lindsay_exomeseq_3772.freq0.01.filtered.tsv.maf
fi

if [[ -s lindsay_exomeseq_3772.freq0.01.filtered.tsv.maf ]]; then
  rm lindsay_exomeseq_3772.freq0.01.filtered.tsv.tmp
fi


Rscript --vanilla /data/cqs/softwares/ngsperl/lib/Annotation/annovar2maf.r /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_05_filter/result/lindsay_exomeseq_3772.freq0.1.filtered.tsv lindsay_exomeseq_3772.freq0.1.filtered.tsv.tmp hg38
  
if [[ -s lindsay_exomeseq_3772.freq0.1.filtered.tsv.tmp ]]; then
  python3 /data/cqs/softwares/ngsperl/lib/Annotation/annovar2maf.py -i lindsay_exomeseq_3772.freq0.1.filtered.tsv.tmp -o lindsay_exomeseq_3772.freq0.1.filtered.tsv.maf
fi

if [[ -s lindsay_exomeseq_3772.freq0.1.filtered.tsv.maf ]]; then
  rm lindsay_exomeseq_3772.freq0.1.filtered.tsv.tmp
fi

