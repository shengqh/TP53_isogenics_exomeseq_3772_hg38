
cd '/scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/sequencetask/result'

set -o pipefail


R --vanilla --slave -f /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/sequencetask/result/lindsay_exomeseq_3772_summary.r 
R --vanilla --slave -f /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/sequencetask/result/lindsay_exomeseq_3772_report.r 
