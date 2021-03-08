#!/bin/sh
# properties = {"type": "single", "rule": "full_ilastik_track", "local": false, "input": ["/hps/research1/birney/users/ian/opto_res/videos/20210203/h5s/20210226_2_4dpi1dpi_cabcr5inj2_W50_sp0.93_op80_GW_MMStack_Default.h5", "/hps/research1/birney/users/ian/opto_res/videos/20210203/pass_2/h5s/20210226_2_4dpi1dpi_cabcr5inj2_W50_sp0.93_op80_GW_MMStack_Default_Probabilities.h5"], "output": ["/hps/research1/birney/users/ian/opto_res/videos/20210203/pass_2/results/raw/20210226_2_4dpi1dpi_cabcr5inj2_W50_sp0.93_op80_GW_MMStack_Default_CSV-Table.csv.csv"], "wildcards": {"sample": "20210226_2_4dpi1dpi_cabcr5inj2_W50_sp0.93_op80_GW_MMStack_Default"}, "params": {"output_file": "/hps/research1/birney/users/ian/opto_res/videos/20210203/pass_2/results/raw/20210226_2_4dpi1dpi_cabcr5inj2_W50_sp0.93_op80_GW_MMStack_Default_CSV-Table.csv"}, "log": [], "threads": 1, "resources": {}, "jobid": 157, "cluster": {"memory": "30000", "n": "1", "name": "full_ilastik_track.sample=20210226_2_4dpi1dpi_cabcr5inj2_W50_sp0.93_op80_GW_MMStack_Default", "output": "../log/full_ilastik_track_sample=20210226_2_4dpi1dpi_cabcr5inj2_W50_sp0.93_op80_GW_MMStack_Default.out", "error": "../log/full_ilastik_track_sample=20210226_2_4dpi1dpi_cabcr5inj2_W50_sp0.93_op80_GW_MMStack_Default.err"}}
 cd /hps/research1/birney/users/ian/opto_res/cos_opto_res && \
PATH='/nfs/research1/birney/users/brettell/anaconda3/envs/snakemake/bin':$PATH /nfs/research1/birney/users/brettell/anaconda3/envs/snakemake/bin/python3.9 \
-m snakemake /hps/research1/birney/users/ian/opto_res/videos/20210203/pass_2/results/raw/20210226_2_4dpi1dpi_cabcr5inj2_W50_sp0.93_op80_GW_MMStack_Default_CSV-Table.csv.csv --snakefile /hps/research1/birney/users/ian/opto_res/cos_opto_res/code/snakemake/20210203/Snakefile \
--force -j --keep-target-files --keep-remote --max-inventory-time 0 \
--wait-for-files /hps/research1/birney/users/ian/opto_res/cos_opto_res/.snakemake/tmp.jv9305l7 /hps/research1/birney/users/ian/opto_res/videos/20210203/h5s/20210226_2_4dpi1dpi_cabcr5inj2_W50_sp0.93_op80_GW_MMStack_Default.h5 /hps/research1/birney/users/ian/opto_res/videos/20210203/pass_2/h5s/20210226_2_4dpi1dpi_cabcr5inj2_W50_sp0.93_op80_GW_MMStack_Default_Probabilities.h5 --latency-wait 1000 \
 --attempt 1 --force-use-threads --scheduler ilp \
\
\
--wrapper-prefix https://github.com/snakemake/snakemake-wrappers/raw/ \
  -p --allowed-rules full_ilastik_track --nocolor --notemp --no-hooks --nolock \
--mode 2  --use-conda  --use-singularity  && touch /hps/research1/birney/users/ian/opto_res/cos_opto_res/.snakemake/tmp.jv9305l7/157.jobfinished || (touch /hps/research1/birney/users/ian/opto_res/cos_opto_res/.snakemake/tmp.jv9305l7/157.jobfailed; exit 1)

