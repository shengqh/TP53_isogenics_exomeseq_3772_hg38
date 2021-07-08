
cd '/scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa/result'

set -o pipefail




if [[ -e /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa/result/P_175_10.unsorted.bam.failed ]]; then
  rm /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa/result/P_175_10.unsorted.bam.failed
fi


status=0
if [[ ! -e P_175_10.unsorted.bam.succeed ]]; then
  echo bwa_mem=`date`
  bwa mem  -M -t 8 -R "@RG\tID:1\tPU:P_175_10\tLB:P_175_10\tSM:P_175_10\tPL:ILLUMINA" /data/cqs/references/broad/hg38/v0/bwa_index_0.7.17/Homo_sapiens_assembly38.fasta "/scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/cutadapt/result/P_175_10_clipped.1.fastq.gz" "/scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/cutadapt/result/P_175_10_clipped.2.fastq.gz"  2> >(tee P_175_10.bwa.stderr.log >&2) | samtools view -bS -o P_175_10.unsorted.bam
  status=$?
  if [[ $status -eq 0 ]]; then
    touch P_175_10.unsorted.bam.succeed
  else
    rm P_175_10.unsorted.bam
    touch P_175_10.unsorted.bam.failed
  fi
  bwa 2>&1 | grep Version | cut -d ' ' -f2 | cut -d '-' -f1 | awk '{print "bwa,v"$1}' > P_175_10.bwa.version
fi

if [[ -e P_175_10.unsorted.bam.succeed ]]; then
  echo bamStat=`date` 
  python3 /data/cqs/softwares/ngsperl/lib/Alignment/bamStat.py -i P_175_10.unsorted.bam -o P_175_10.bamstat
fi
    
if [[ (-e P_175_10.unsorted.bam.succeed) && ((1 -eq $1) || (! -s P_175_10.sortedByCoord.bam)) ]]; then
  echo sort_bam=`date`
  samtools sort -m 5G  -T bwa_P_175_10 -o P_175_10.sortedByCoord.bam P_175_10.unsorted.bam && touch P_175_10.sortedByCoord.bam.succeed
  rm -rf bwa_P_175_10
  if [[ ! -e P_175_10.sortedByCoord.bam.succeed ]]; then
    rm P_175_10.sortedByCoord.bam
  fi
fi

if [[ (-e P_175_10.sortedByCoord.bam.succeed) && ((1 -eq $1) || (! -s P_175_10.sortedByCoord.bam.bai)) ]]; then
  echo index_bam=`date`
  samtools index  P_175_10.sortedByCoord.bam 
  samtools idxstats P_175_10.sortedByCoord.bam > P_175_10.sortedByCoord.bam.chromosome.count
fi




if [[ -e P_175_10.sortedByCoord.bam.succeed && -s P_175_10.sortedByCoord.bam.bai ]]; then
  echo flagstat=`date` 
  samtools flagstat P_175_10.sortedByCoord.bam > P_175_10.sortedByCoord.bam.stat 
fi

rm -rf bwa_P_175_10 

if [[ -e P_175_10.sortedByCoord.bam.succeed && -s P_175_10.bamstat ]]; then
  rm  P_175_10.unsorted.bam
fi
