
cd '/scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine/result'

set -o pipefail



mkdir tmp_P_56B


if [[ (-s /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa/result/P_56B.sortedByCoord.bam) && (-s /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa/result/P_56B.sortedByCoord.bam.bai) && (! -s P_56B.rmdup.bam) ]]; then
  echo MarkDuplicates=`date` 
  java -Djava.io.tmpdir=`pwd`/tmp_P_56B -Xmx40g -jar /opt/picard.jar MarkDuplicates I=/scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa/result/P_56B.sortedByCoord.bam O=P_56B.rmdup.bam ASSUME_SORTED=true REMOVE_DUPLICATES=true CREATE_INDEX=true VALIDATION_STRINGENCY=SILENT M=P_56B.rmdup.bam.metrics
fi

if [[ (-s P_56B.rmdup.bam) && (-s P_56B.rmdup.bai) && (! -s P_56B.rmdup.indel.bam) ]]; then
  echo RealignerTargetCreator=`date` 
  java -Djava.io.tmpdir=`pwd`/tmp_P_56B -Xmx40g -jar /opt/gatk3.jar -T RealignerTargetCreator -nt 1  -I P_56B.rmdup.bam -R /data/cqs/references/broad/hg38/v0/bwa_index_0.7.17/Homo_sapiens_assembly38.fasta  -known /data/cqs/references/broad/hg38/v0/Homo_sapiens_assembly38.dbsnp138.vcf.gz -o P_56B.rmdup.indel.intervals 
fi

if [[ (-s P_56B.rmdup.indel.intervals) && (! -s P_56B.rmdup.indel.bam) ]]; then
  echo IndelRealigner=`date` 
  #InDel parameter referenced: http://www.broadinstitute.org/gatk/guide/tagged?tag=local%20realignment
  java -Djava.io.tmpdir=`pwd`/tmp_P_56B -Xmx40g -Djava.io.tmpdir=tmpdir -jar /opt/gatk3.jar -T IndelRealigner  -I P_56B.rmdup.bam -R /data/cqs/references/broad/hg38/v0/bwa_index_0.7.17/Homo_sapiens_assembly38.fasta -targetIntervals P_56B.rmdup.indel.intervals  -known /data/cqs/references/broad/hg38/v0/Homo_sapiens_assembly38.dbsnp138.vcf.gz --consensusDeterminationModel USE_READS -LOD 0.4 -o P_56B.rmdup.indel.bam 
fi  

if [[ (-s P_56B.rmdup.indel.bam) && (-s P_56B.rmdup.indel.bai) && (! -s P_56B.rmdup.indel.recal.table) ]]; then
  echo BaseRecalibrator=`date` 
  java -Djava.io.tmpdir=`pwd`/tmp_P_56B -Xmx40g -jar /opt/gatk3.jar -T BaseRecalibrator -nct 1 -rf BadCigar -R /data/cqs/references/broad/hg38/v0/bwa_index_0.7.17/Homo_sapiens_assembly38.fasta -I P_56B.rmdup.indel.bam  -knownSites /data/cqs/references/broad/hg38/v0/Mills_and_1000G_gold_standard.indels.hg38.vcf.gz -knownSites /data/cqs/references/broad/hg38/v0/Homo_sapiens_assembly38.dbsnp138.vcf.gz -o P_56B.rmdup.indel.recal.table 
fi

if [[ (-s P_56B.rmdup.indel.recal.table) && (! -s P_56B.rmdup.indel.recal.bam) ]]; then
  echo PrintReads=`date`
  java -Djava.io.tmpdir=`pwd`/tmp_P_56B -Xmx40g -jar /opt/gatk3.jar -T PrintReads --simplifyBAM -nct 1 -rf BadCigar -R /data/cqs/references/broad/hg38/v0/bwa_index_0.7.17/Homo_sapiens_assembly38.fasta -I P_56B.rmdup.indel.bam -BQSR P_56B.rmdup.indel.recal.table -o P_56B.rmdup.indel.recal.bam 
fi

if [[ (-s P_56B.rmdup.indel.recal.bam) && (-s P_56B.rmdup.indel.recal.bai) ]]; then
  ln P_56B.rmdup.indel.recal.bai P_56B.rmdup.indel.recal.bam.bai

  if [[ ! -s P_56B.rmdup.indel.recal.bam.stat ]]; then 
    echo flagstat = `date` 
    samtools flagstat P_56B.rmdup.indel.recal.bam > P_56B.rmdup.indel.recal.bam.stat 
  fi

  if [[ ! -s P_56B.rmdup.indel.recal.bam.chromosome.count ]]; then 
    echo flagstat = `date` 
    samtools idxstats P_56B.rmdup.indel.recal.bam > P_56B.rmdup.indel.recal.bam.chromosome.count 
  fi

  rm  P_56B.rmdup.bam P_56B.rmdup.bai P_56B.rmdup.indel.bam P_56B.rmdup.indel.bai P_56B.rmdup.indel.intervals 
fi

rm -rf tmp_P_56B

