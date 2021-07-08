
cd '/scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_05_filter/result'

set -o pipefail


 
python3 /data/cqs/softwares/ngsperl/lib/Annotation/filterAnnovar.py --exac_key ExAC_ALL --g1000_key 1000g2015aug_all --gnomad_key AF -i /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_04_annovar/result/lindsay_exomeseq_3772/lindsay_exomeseq_3772.maf_filtered.annovar.final.tsv -t 0.001 -o lindsay_exomeseq_3772.freq0.001    --filter_fq_equal_1  
 
python3 /data/cqs/softwares/ngsperl/lib/Annotation/filterAnnovar.py --exac_key ExAC_ALL --g1000_key 1000g2015aug_all --gnomad_key AF -i /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_04_annovar/result/lindsay_exomeseq_3772/lindsay_exomeseq_3772.maf_filtered.annovar.final.tsv -t 0.01 -o lindsay_exomeseq_3772.freq0.01    --filter_fq_equal_1  
 
python3 /data/cqs/softwares/ngsperl/lib/Annotation/filterAnnovar.py --exac_key ExAC_ALL --g1000_key 1000g2015aug_all --gnomad_key AF -i /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_04_annovar/result/lindsay_exomeseq_3772/lindsay_exomeseq_3772.maf_filtered.annovar.final.tsv -t 0.1 -o lindsay_exomeseq_3772.freq0.1    --filter_fq_equal_1  
 
python3 /data/cqs/softwares/ngsperl/lib/Annotation/filterAnnovar.py --exac_key ExAC_ALL --g1000_key 1000g2015aug_all --gnomad_key AF -i /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_04_annovar/result/lindsay_exomeseq_3772/lindsay_exomeseq_3772.maf_filtered.annovar.final.tsv -t 1.0 -o lindsay_exomeseq_3772.freq1.0    --filter_fq_equal_1  
