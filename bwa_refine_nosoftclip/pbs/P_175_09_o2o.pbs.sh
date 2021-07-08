
res_dir='/scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip/result'
tmp_dir=$(mktemp -d -t ci-$(date +%Y-%m-%d-%H-%M-%S)-XXXXXXXXXX)

tmp_cleaner()
{
rm -rf ${tmp_dir}
exit -1
}
trap 'tmp_cleaner' TERM

echo using tmp_dir=$tmp_dir
cd $tmp_dir


set -o pipefail



echo localize start at `date`

echo /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine/result/P_175_09.rmdup.indel.recal.bam      
if [[ ! -s /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine/result/P_175_09.rmdup.indel.recal.bam ]]; then
  echo file not exists: /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine/result/P_175_09.rmdup.indel.recal.bam
  touch $res_dir/P_175_09.rmdup.indel.recal.bam.not.exist
  rm P_175_09.rmdup.indel.recal.bam
  exit 1
fi

for i in {1..5}; do 
  echo iteration $i ...
  cp -f /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine/result/P_175_09.rmdup.indel.recal.bam P_175_09.rmdup.indel.recal.bam
  diff /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine/result/P_175_09.rmdup.indel.recal.bam P_175_09.rmdup.indel.recal.bam
  status=$?
  if [[ $status -eq 0 ]]; then
    break
  fi
done

if [[ $status -ne 0 ]]; then
  echo file copied is not idential to original file, quit.
  touch $res_dir/P_175_09.rmdup.indel.recal.bam.copy.failed
  rm P_175_09.rmdup.indel.recal.bam
  exit 1
fi

if [[ ! -s /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine/result/P_175_09.rmdup.indel.recal.bam.bai ]]; then
  echo file not exists: /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine/result/P_175_09.rmdup.indel.recal.bam.bai
  touch $res_dir/P_175_09.rmdup.indel.recal.bam.bai.not.exist
  rm P_175_09.rmdup.indel.recal.bam
  exit 1
fi

for i in {1..5}; do 
  echo iteration $i ...
  cp -f /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine/result/P_175_09.rmdup.indel.recal.bam.bai P_175_09.rmdup.indel.recal.bam.bai
  diff /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine/result/P_175_09.rmdup.indel.recal.bam.bai P_175_09.rmdup.indel.recal.bam.bai
  status=$?
  if [[ $status -eq 0 ]]; then
    break
  fi
done

if [[ $status -ne 0 ]]; then
  echo file copied is not idential to original file, quit.
  touch $res_dir/P_175_09.rmdup.indel.recal.bam.bai.copy.failed
  rm P_175_09.rmdup.indel.recal.bam
  exit 1
fi

ls *
echo localize end at `date`


    

python3 /data/cqs/softwares/ngsperl/lib/CQS/../GATK/filterSoftClip.py --min-mapq 10 -i P_175_09.rmdup.indel.recal.bam -o P_175_09.nosoftclip.bam

samtools index P_175_09.nosoftclip.bam.bai
samtools idxstats P_175_09.nosoftclip.bam > P_175_09.nosoftclip.bam.chromosome.count
  


rm P_175_09.rmdup.indel.recal.bam P_175_09.rmdup.indel.recal.bam.bai

if [[ -d $tmp_dir && $tmp_dir != '/' ]]; then
  echo copy result from $tmp_dir to $res_dir
  #if the pbs was generated again during task is running, copy may be unpredictable. 
  #make sure to change to tmp_dir before copy result

  cd $tmp_dir
  cd $tmp_dir
  cd $tmp_dir
  cd $tmp_dir
  cd $tmp_dir
  cd $tmp_dir
  cd $tmp_dir
  cd $tmp_dir
  cd $tmp_dir
  cd $tmp_dir

  cp -p -r * $res_dir
  cd $res_dir
  echo delete tmp folder $tmp_dir
  rm -rf $tmp_dir
  echo move file and clean tmp folder done.
fi
