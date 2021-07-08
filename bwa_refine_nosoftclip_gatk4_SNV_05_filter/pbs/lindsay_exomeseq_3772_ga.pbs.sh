
cd '/scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_05_filter/result'

set -o pipefail


 
R --vanilla -f /data/cqs/softwares/ngsperl/lib/Annotation/oncoPrint.r --args /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_05_filter/result/lindsay_exomeseq_3772.freq0.001.snv.missense.tsv lindsay_exomeseq_3772.freq0.001.snv.missense.oncoprint.tsv onco_options.txt TP53 ATM BARD1 BRCA1 BRCA2 BRIP1 CDH1 CHEK2 MSH6 NBN NF1 PALB2 PTEN RAD51C RAD51D CDKN2A
 
R --vanilla -f /data/cqs/softwares/ngsperl/lib/Annotation/CBioPortal.r --args /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_05_filter/result/lindsay_exomeseq_3772.freq0.001.snv.missense.tsv lindsay_exomeseq_3772.freq0.001.snv.missense.cBioPortal . TP53 ATM BARD1 BRCA1 BRCA2 BRIP1 CDH1 CHEK2 MSH6 NBN NF1 PALB2 PTEN RAD51C RAD51D CDKN2A
 
R --vanilla -f /data/cqs/softwares/ngsperl/lib/Annotation/oncoPrint.r --args /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_05_filter/result/lindsay_exomeseq_3772.freq0.01.snv.missense.tsv lindsay_exomeseq_3772.freq0.01.snv.missense.oncoprint.tsv onco_options.txt TP53 ATM BARD1 BRCA1 BRCA2 BRIP1 CDH1 CHEK2 MSH6 NBN NF1 PALB2 PTEN RAD51C RAD51D CDKN2A
 
R --vanilla -f /data/cqs/softwares/ngsperl/lib/Annotation/CBioPortal.r --args /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_05_filter/result/lindsay_exomeseq_3772.freq0.01.snv.missense.tsv lindsay_exomeseq_3772.freq0.01.snv.missense.cBioPortal . TP53 ATM BARD1 BRCA1 BRCA2 BRIP1 CDH1 CHEK2 MSH6 NBN NF1 PALB2 PTEN RAD51C RAD51D CDKN2A
 
R --vanilla -f /data/cqs/softwares/ngsperl/lib/Annotation/oncoPrint.r --args /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_05_filter/result/lindsay_exomeseq_3772.freq0.1.snv.missense.tsv lindsay_exomeseq_3772.freq0.1.snv.missense.oncoprint.tsv onco_options.txt TP53 ATM BARD1 BRCA1 BRCA2 BRIP1 CDH1 CHEK2 MSH6 NBN NF1 PALB2 PTEN RAD51C RAD51D CDKN2A
 
R --vanilla -f /data/cqs/softwares/ngsperl/lib/Annotation/CBioPortal.r --args /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_05_filter/result/lindsay_exomeseq_3772.freq0.1.snv.missense.tsv lindsay_exomeseq_3772.freq0.1.snv.missense.cBioPortal . TP53 ATM BARD1 BRCA1 BRCA2 BRIP1 CDH1 CHEK2 MSH6 NBN NF1 PALB2 PTEN RAD51C RAD51D CDKN2A
 
R --vanilla -f /data/cqs/softwares/ngsperl/lib/Annotation/oncoPrint.r --args /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_05_filter/result/lindsay_exomeseq_3772.freq1.0.snv.missense.tsv lindsay_exomeseq_3772.freq1.0.snv.missense.oncoprint.tsv onco_options.txt TP53 ATM BARD1 BRCA1 BRCA2 BRIP1 CDH1 CHEK2 MSH6 NBN NF1 PALB2 PTEN RAD51C RAD51D CDKN2A
 
R --vanilla -f /data/cqs/softwares/ngsperl/lib/Annotation/CBioPortal.r --args /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_05_filter/result/lindsay_exomeseq_3772.freq1.0.snv.missense.tsv lindsay_exomeseq_3772.freq1.0.snv.missense.cBioPortal . TP53 ATM BARD1 BRCA1 BRCA2 BRIP1 CDH1 CHEK2 MSH6 NBN NF1 PALB2 PTEN RAD51C RAD51D CDKN2A
 
python3 /data/cqs/softwares/ngsperl/lib/Annotation/geneDetails.py -i /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_05_filter/result/lindsay_exomeseq_3772.freq0.001.filtered.missense.tsv -o lindsay_exomeseq_3772.freq0.001.filtered.missense.geneDetails.txt -g TP53,ATM,BARD1,BRCA1,BRCA2,BRIP1,CDH1,CHEK2,MSH6,NBN,NF1,PALB2,PTEN,RAD51C,RAD51D,CDKN2A
 
python3 /data/cqs/softwares/ngsperl/lib/Annotation/geneDetails.py -i /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_05_filter/result/lindsay_exomeseq_3772.freq0.01.filtered.missense.tsv -o lindsay_exomeseq_3772.freq0.01.filtered.missense.geneDetails.txt -g TP53,ATM,BARD1,BRCA1,BRCA2,BRIP1,CDH1,CHEK2,MSH6,NBN,NF1,PALB2,PTEN,RAD51C,RAD51D,CDKN2A
 
python3 /data/cqs/softwares/ngsperl/lib/Annotation/geneDetails.py -i /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_05_filter/result/lindsay_exomeseq_3772.freq0.1.filtered.missense.tsv -o lindsay_exomeseq_3772.freq0.1.filtered.missense.geneDetails.txt -g TP53,ATM,BARD1,BRCA1,BRCA2,BRIP1,CDH1,CHEK2,MSH6,NBN,NF1,PALB2,PTEN,RAD51C,RAD51D,CDKN2A
 
python3 /data/cqs/softwares/ngsperl/lib/Annotation/geneDetails.py -i /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_05_filter/result/lindsay_exomeseq_3772.freq1.0.filtered.missense.tsv -o lindsay_exomeseq_3772.freq1.0.filtered.missense.geneDetails.txt -g TP53,ATM,BARD1,BRCA1,BRCA2,BRIP1,CDH1,CHEK2,MSH6,NBN,NF1,PALB2,PTEN,RAD51C,RAD51D,CDKN2A
 
python3 /data/cqs/softwares/ngsperl/lib/Annotation/geneFilter.py -i /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_05_filter/result/lindsay_exomeseq_3772.freq0.001.filtered.missense.tsv -o lindsay_exomeseq_3772.freq0.001.filtered.missense.geneFilter.txt -g TP53,ATM,BARD1,BRCA1,BRCA2,BRIP1,CDH1,CHEK2,MSH6,NBN,NF1,PALB2,PTEN,RAD51C,RAD51D,CDKN2A
 
python3 /data/cqs/softwares/ngsperl/lib/Annotation/geneFilter.py -i /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_05_filter/result/lindsay_exomeseq_3772.freq0.01.filtered.missense.tsv -o lindsay_exomeseq_3772.freq0.01.filtered.missense.geneFilter.txt -g TP53,ATM,BARD1,BRCA1,BRCA2,BRIP1,CDH1,CHEK2,MSH6,NBN,NF1,PALB2,PTEN,RAD51C,RAD51D,CDKN2A
 
python3 /data/cqs/softwares/ngsperl/lib/Annotation/geneFilter.py -i /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_05_filter/result/lindsay_exomeseq_3772.freq0.1.filtered.missense.tsv -o lindsay_exomeseq_3772.freq0.1.filtered.missense.geneFilter.txt -g TP53,ATM,BARD1,BRCA1,BRCA2,BRIP1,CDH1,CHEK2,MSH6,NBN,NF1,PALB2,PTEN,RAD51C,RAD51D,CDKN2A
 
python3 /data/cqs/softwares/ngsperl/lib/Annotation/geneFilter.py -i /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_SNV_05_filter/result/lindsay_exomeseq_3772.freq1.0.filtered.missense.tsv -o lindsay_exomeseq_3772.freq1.0.filtered.missense.geneFilter.txt -g TP53,ATM,BARD1,BRCA1,BRCA2,BRIP1,CDH1,CHEK2,MSH6,NBN,NF1,PALB2,PTEN,RAD51C,RAD51D,CDKN2A
