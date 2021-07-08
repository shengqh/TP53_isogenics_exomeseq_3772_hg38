
cd '/scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa/result'

set -o pipefail




if [[ -e /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa/result/P_273_09.unsorted.bam.failed ]]; then
  rm /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa/result/P_273_09.unsorted.bam.failed
fi


status=0
if [[ ! -e P_273_09.unsorted.bam.succeed ]]; then
  echo bwa_mem=`date`
  bwa mem  -M -t 8 -R "@RG\tID:1\tPU:P_273_09\tLB:P_273_09\tSM:P_273_09\tPL:ILLUMINA" /data/cqs/references/broad/hg38/v0/bwa_index_0.7.17/Homo_sapiens_assembly38.fasta "/scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/cutadapt/result/P_273_09_clipped.1.fastq.gz" "/scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/cutadapt/result/P_273_09_clipped.2.fastq.gz"  2> >(tee P_273_09.bwa.stderr.log >&2) | samtools view -bS -o P_273_09.unsorted.bam
  status=$?
  if [[ $status -eq 0 ]]; then
    touch P_273_09.unsorted.bam.succeed
  else
    rm P_273_09.unsorted.bam
    touch P_273_09.unsorted.bam.failed
  fi
  bwa 2>&1 | grep Version | cut -d ' ' -f2 | cut -d '-' -f1 | awk '{print "bwa,v"$1}' > P_273_09.bwa.version
fi

if [[ -e P_273_09.unsorted.bam.succeed ]]; then
  echo bamStat=`date` 
  python3 /data/cqs/softwares/ngsperl/lib/Alignment/bamStat.py -i P_273_09.unsorted.bam -o P_273_09.bamstat
fi
    
if [[ (-e P_273_09.unsorted.bam.succeed) && ((1 -eq $1) || (! -s P_273_09.sortedByCoord.bam)) ]]; then
  echo sort_bam=`date`
  samtools sort -m 5G  -T bwa_P_273_09 -o P_273_09.sortedByCoord.bam P_273_09.unsorted.bam && touch P_273_09.sortedByCoord.bam.succeed
  rm -rf bwa_P_273_09
  if [[ ! -e P_273_09.sortedByCoord.bam.succeed ]]; then
    rm P_273_09.sortedByCoord.bam
  fi
fi

if [[ (-e P_273_09.sortedByCoord.bam.succeed) && ((1 -eq $1) || (! -s P_273_09.sortedByCoord.bam.bai)) ]]; then
  echo index_bam=`date`
  samtools index  P_273_09.sortedByCoord.bam 
  samtools idxstats P_273_09.sortedByCoord.bam > P_273_09.sortedByCoord.bam.chromosome.count
fi




if [[ -e P_273_09.sortedByCoord.bam.succeed && -s P_273_09.sortedByCoord.bam.bai ]]; then
  echo flagstat=`date` 
  samtools flagstat P_273_09.sortedByCoord.bam > P_273_09.sortedByCoord.bam.stat 
fi

rm -rf bwa_P_273_09 

if [[ -e P_273_09.sortedByCoord.bam.succeed && -s P_273_09.bamstat ]]; then
  rm  P_273_09.unsorted.bam
fi
