
cd '/scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_CNV_Germline_05_GermlineCNVCaller_2_scatterCall/result/lindsay_exomeseq_3772_ITER_018'

set -o pipefail


  

cd /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_CNV_Germline_05_GermlineCNVCaller_2_scatterCall/result/lindsay_exomeseq_3772_ITER_018

export MKL_NUM_THREADS=1
export OMP_NUM_THREADS=1

gatk --java-options "-Xmx40G" GermlineCNVCaller  \
  --run-mode COHORT \
  -L /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_CNV_Germline_05_GermlineCNVCaller_1_scatterIntervals/result/lindsay_exomeseq_3772.18.interval_list  \
  --input /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_CNV_Germline_02_CollectReadCounts/result/P_09B.count.hdf5 \
  --input /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_CNV_Germline_02_CollectReadCounts/result/P_12B.count.hdf5 \
  --input /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_CNV_Germline_02_CollectReadCounts/result/P_175_06.count.hdf5 \
  --input /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_CNV_Germline_02_CollectReadCounts/result/P_175_09.count.hdf5 \
  --input /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_CNV_Germline_02_CollectReadCounts/result/P_175_10.count.hdf5 \
  --input /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_CNV_Germline_02_CollectReadCounts/result/P_175_12.count.hdf5 \
  --input /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_CNV_Germline_02_CollectReadCounts/result/P_175_18.count.hdf5 \
  --input /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_CNV_Germline_02_CollectReadCounts/result/P_175_19.count.hdf5 \
  --input /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_CNV_Germline_02_CollectReadCounts/result/P_175_23.count.hdf5 \
  --input /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_CNV_Germline_02_CollectReadCounts/result/P_175_27.count.hdf5 \
  --input /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_CNV_Germline_02_CollectReadCounts/result/P_175_33.count.hdf5 \
  --input /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_CNV_Germline_02_CollectReadCounts/result/P_181.count.hdf5 \
  --input /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_CNV_Germline_02_CollectReadCounts/result/P_181F1.count.hdf5 \
  --input /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_CNV_Germline_02_CollectReadCounts/result/P_196.count.hdf5 \
  --input /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_CNV_Germline_02_CollectReadCounts/result/P_196F1.count.hdf5 \
  --input /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_CNV_Germline_02_CollectReadCounts/result/P_196F2.count.hdf5 \
  --input /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_CNV_Germline_02_CollectReadCounts/result/P_23B.count.hdf5 \
  --input /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_CNV_Germline_02_CollectReadCounts/result/P_273_03.count.hdf5 \
  --input /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_CNV_Germline_02_CollectReadCounts/result/P_273_09.count.hdf5 \
  --input /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_CNV_Germline_02_CollectReadCounts/result/P_273_13.count.hdf5 \
  --input /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_CNV_Germline_02_CollectReadCounts/result/P_273_15.count.hdf5 \
  --input /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_CNV_Germline_02_CollectReadCounts/result/P_273_21.count.hdf5 \
  --input /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_CNV_Germline_02_CollectReadCounts/result/P_273_22.count.hdf5 \
  --input /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_CNV_Germline_02_CollectReadCounts/result/P_273_37.count.hdf5 \
  --input /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_CNV_Germline_02_CollectReadCounts/result/P_273_38.count.hdf5 \
  --input /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_CNV_Germline_02_CollectReadCounts/result/P_273_39.count.hdf5 \
  --input /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_CNV_Germline_02_CollectReadCounts/result/P_273_40.count.hdf5 \
  --input /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_CNV_Germline_02_CollectReadCounts/result/P_31B.count.hdf5 \
  --input /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_CNV_Germline_02_CollectReadCounts/result/P_38B.count.hdf5 \
  --input /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_CNV_Germline_02_CollectReadCounts/result/P_42B.count.hdf5 \
  --input /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_CNV_Germline_02_CollectReadCounts/result/P_56B.count.hdf5 \
  --input /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_CNV_Germline_02_CollectReadCounts/result/P_60B.count.hdf5 \
  --input /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_CNV_Germline_02_CollectReadCounts/result/P_64B.count.hdf5 \
  --input /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_CNV_Germline_02_CollectReadCounts/result/P_67B.count.hdf5 \
  --input /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_CNV_Germline_02_CollectReadCounts/result/P_C04.count.hdf5 \
  --input /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_CNV_Germline_02_CollectReadCounts/result/P_C08.count.hdf5 \
  --contig-ploidy-calls /scratch/cqs/shengq2/jennifer/20200407_lindsay_exomeseq_3772_hg38/bwa_refine_nosoftclip_gatk4_CNV_Germline_04_DetermineGermlineContigPloidyCohortMode/result/lindsay_exomeseq_3772-calls \
  --interval-merging-rule OVERLAPPING_ONLY \
  --output . \
  --output-prefix gcc \
  --verbosity DEBUG  \
  --p-alt 1e-6 \
  --p-active 1e-2 \
  --cnv-coherence-length 10000.0 \
  --class-coherence-length 10000.0 \
  --max-copy-number 5 \
  --max-bias-factors 5 \
  --mapping-error-rate 0.01 \
  --interval-psi-scale 0.001 \
  --sample-psi-scale 0.0001 \
  --depth-correction-tau 10000.0 \
  --log-mean-bias-standard-deviation 0.1 \
  --init-ard-rel-unexplained-variance 0.1 \
  --num-gc-bins 20 \
  --gc-curve-standard-deviation 1.0 \
  --copy-number-posterior-expectation-mode HYBRID \
  --enable-bias-factors true \
  --active-class-padding-hybrid-mode 50000 \
  --learning-rate 0.05 \
  --adamax-beta-1 0.9 \
  --adamax-beta-2 0.99 \
  --log-emission-samples-per-round 50 \
  --log-emission-sampling-median-rel-error 0.005 \
  --log-emission-sampling-rounds 10 \
  --max-advi-iter-first-epoch 5000 \
  --max-advi-iter-subsequent-epochs 100 \
  --min-training-epochs 10 \
  --max-training-epochs 100 \
  --initial-temperature 2.0 \
  --num-thermal-advi-iters 2500 \
  --convergence-snr-averaging-window 500 \
  --convergence-snr-trigger-threshold 0.1 \
  --convergence-snr-countdown-window 10 \
  --max-calling-iters 10 \
  --caller-update-convergence-threshold 0.001 \
  --caller-internal-admixing-rate 0.75 \
  --caller-external-admixing-rate 1.00 \
  --disable-annealing false
            
rm -rf .cache .conda .config .theano
