#!/bin/bash

# NOTE: raw data locations:
# FTP: /nfs/ftp/private/indigene_ftp/upload/OMR_Risa

####################
# EBI codon cluster
####################

PROJ=cos_opto_res

ssh codon
module load singularity-3.7.0-gcc-9.3.0-dp5ffrp
bsub -M 20000 -Is bash
cd /hps/software/users/birney/ian/repos/$PROJ
conda activate snakemake_6.7.0
snakemake \
  --jobs 5000 \
  --latency-wait 100 \
  --cluster-config config/cluster.yaml \
  --cluster 'bsub -g /snakemake_bgenie -J {cluster.name} -q {cluster.queue} -n {cluster.n} -M {cluster.memory} -o {cluster.outfile}' \
  --keep-going \
  --rerun-incomplete \
  --use-conda \
  --use-singularity \
  -s workflow/Snakefile \
  -p

####################
# RStudio Server
####################

# Build container

## Load Singularity
module load singularity-3.7.0-gcc-9.3.0-dp5ffrp

## Set project
PROJ=cos_opto_res

## Set container path
CONT=/hps/nobackup/birney/users/ian/containers/$PROJ/R_4.1.0.sif

## Build
singularity build --remote \
    $CONT \
    workflow/envs/R_4.1.0/R_4.1.0.def

## Start RStudio Server
ssh proxy-codon
bsub -M 20000 -Is bash
module load singularity-3.7.0-gcc-9.3.0-dp5ffrp
PROJ=cos_opto_res
CONT=/hps/nobackup/birney/users/ian/containers/$PROJ/R_4.1.0.sif
singularity shell --bind /hps/software/users/birney/ian/rstudio_db:/var/lib/rstudio-server \
                  --bind /hps/software/users/birney/ian/tmp:/tmp \
                  --bind /hps/software/users/birney/ian/run:/run \
                  $CONT
# Then run rserver, setting path of config file containing library path
rserver --rsession-config-file /hps/software/users/birney/ian/repos/cos_opto_res/workflow/envs/R_4.1.0/rsession.conf

ssh -L 8787:hl-codon-37-04:8787 proxy-codon
