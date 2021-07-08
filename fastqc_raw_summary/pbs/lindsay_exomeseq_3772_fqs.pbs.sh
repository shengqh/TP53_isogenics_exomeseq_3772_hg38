
cd '/scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/fastqc_raw_summary/result'

set -o pipefail



#qcimg2pdf.sh -o lindsay_exomeseq_3772

python3 /data/cqs/softwares/ngsperl/lib/QC/fastQCSummary.py -i fileList1.txt -o lindsay_exomeseq_3772.FastQC

R --vanilla -f /data/cqs/softwares/ngsperl/lib/QC/fastQCSummary.r --args lindsay_exomeseq_3772.FastQC lindsay_exomeseq_3772.FastQC.Rmd
