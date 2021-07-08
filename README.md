# lindsay_exomeseq_3772_hg38
Exome sequencing data analysis code. If you find anything missing in the repository, please open issue at [github](https://github.com/shengqh/TP53_isogenics_exomeseq_3772_hg38/issues) and we will try our best to response.

## NGSPERL package

The whole analysis scripts were generated based on NGSPERL framework. A lot of customized scripts (perl, python and R) were used in the data analysis. Usually the R script will be put into result folder of each task. However, perl and python scripts would still be located in the NGSPERL library folder. You can download the NGSPERL framework from [ngsperl](https://github.com/shengqh/ngsperl).

## Used singularity images

We performed the analysis using singularity images. You can find corresponding docker images below.

```
docker://shengqh/cqs_exomeseq
docker://shengqh/cqs_gatk4
docker://shengqh/mafreport
```

## Essential database files

We used hg38 v0 genome from BROAD Institute in our data analysis. You may download it from google cloud.

```
gsutil -m cp -r gs://gcp-public-data--broad-references/hg38/v0 .
```

Three other essential files used in analysis were uploaded to [references](https://github.com/shengqh/TP53_isogenics_exomeseq_3772_hg38/tree/main/references) folder in this repository.

```
hg38_cpg_islands.bed
hg38-blacklist.v2.bed
Twist_Exome_Target_hg38.slop50.bed
```
