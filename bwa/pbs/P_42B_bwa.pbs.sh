
cd '/scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa/result'

set -o pipefail




if [[ -e /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa/result/P_42B.unsorted.bam.failed ]]; then
  rm /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa/result/P_42B.unsorted.bam.failed
fi


status=0
if [[ ! -e P_42B.unsorted.bam.succeed ]]; then
  echo bwa_mem=`date`
  bwa mem  -M -t 8 -R "@RG\tID:1\tPU:P_42B\tLB:P_42B\tSM:P_42B\tPL:ILLUMINA" /data/cqs/references/broad/hg38/v0/bwa_index_0.7.17/Homo_sapiens_assembly38.fasta "/scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/cutadapt/result/P_42B_clipped.1.fastq.gz" "/scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/cutadapt/result/P_42B_clipped.2.fastq.gz"  2> >(tee P_42B.bwa.stderr.log >&2) | samtools view -bS -o P_42B.unsorted.bam
  status=$?
  if [[ $status -eq 0 ]]; then
    touch P_42B.unsorted.bam.succeed
  else
    rm P_42B.unsorted.bam
    touch P_42B.unsorted.bam.failed
  fi
  bwa 2>&1 | grep Version | cut -d ' ' -f2 | cut -d '-' -f1 | awk '{print "bwa,v"$1}' > P_42B.bwa.version
fi

if [[ -e P_42B.unsorted.bam.succeed ]]; then
  echo bamStat=`date` 
  python3 /data/cqs/softwares/ngsperl/lib/Alignment/bamStat.py -i P_42B.unsorted.bam -o P_42B.bamstat
fi
    
if [[ (-e P_42B.unsorted.bam.succeed) && ((1 -eq $1) || (! -s P_42B.sortedByCoord.bam)) ]]; then
  echo sort_bam=`date`
  samtools sort -m 5G  -T bwa_P_42B -o P_42B.sortedByCoord.bam P_42B.unsorted.bam && touch P_42B.sortedByCoord.bam.succeed
  rm -rf bwa_P_42B
  if [[ ! -e P_42B.sortedByCoord.bam.succeed ]]; then
    rm P_42B.sortedByCoord.bam
  fi
fi

if [[ (-e P_42B.sortedByCoord.bam.succeed) && ((1 -eq $1) || (! -s P_42B.sortedByCoord.bam.bai)) ]]; then
  echo index_bam=`date`
  samtools index  P_42B.sortedByCoord.bam 
  samtools idxstats P_42B.sortedByCoord.bam > P_42B.sortedByCoord.bam.chromosome.count
fi




if [[ -e P_42B.sortedByCoord.bam.succeed && -s P_42B.sortedByCoord.bam.bai ]]; then
  echo flagstat=`date` 
  samtools flagstat P_42B.sortedByCoord.bam > P_42B.sortedByCoord.bam.stat 
fi

rm -rf bwa_P_42B 

if [[ -e P_42B.sortedByCoord.bam.succeed && -s P_42B.bamstat ]]; then
  rm  P_42B.unsorted.bam
fi
