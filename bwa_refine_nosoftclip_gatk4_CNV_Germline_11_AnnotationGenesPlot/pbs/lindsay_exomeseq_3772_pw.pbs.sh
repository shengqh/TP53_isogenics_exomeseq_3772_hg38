
cd '/scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_CNV_Germline_11_AnnotationGenesPlot/result'

set -o pipefail





python3 /data/cqs/softwares/ngsperl/lib/CQS/../Visualization/plotCNV.py   -i /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/annotation_genes_locus/result/lindsay_exomeseq_3772.bed -c /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_CNV_Germline_07_CombineGCNV/result/lindsay_exomeseq_3772.txt -s /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_CNV_Germline_08_SizeFactor/result/lindsay_exomeseq_3772.txt.sizefactor -b lindsay_exomeseq_3772__fileList1.list -o lindsay_exomeseq_3772.position.txt.slim
