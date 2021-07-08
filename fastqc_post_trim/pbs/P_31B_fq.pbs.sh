
cd '/scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/fastqc_post_trim/result/P_31B'

set -o pipefail



fastqc  --extract -t 2 -o `pwd` "/scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/cutadapt/result/P_31B_clipped.1.fastq.gz" "/scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/cutadapt/result/P_31B_clipped.2.fastq.gz" 2> >(tee P_31B.fastqc.stderr.log >&2)

fastqc --version | cut -d ' ' -f2 | awk '{print "FastQC,"$1}' > `pwd`/fastqc.version
