
cd '/scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/dedup_fastq/result'

set -o pipefail



    

python3 /data/cqs/softwares/ngsperl/lib/CQS/../Format/dedupFastq.py   -i /data/cqs/jennifer_pietenpol/20190905_3772/3772-LR-14-AAGACATT-CTTCAACC_S01_L001_R1_001.fastq.gz,/data/cqs/jennifer_pietenpol/20190905_3772/3772-LR-14-AAGACATT-CTTCAACC_S01_L001_R2_001.fastq.gz -o P_09B.dedup

