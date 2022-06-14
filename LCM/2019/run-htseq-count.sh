#!/bin/sh
#
## Name your job
#SBATCH -J htseq-count-LCM
#
## Change the queue
#SBATCH -p DPB
#
## With 10G RAM per node
#SBATCH --mem=10G

module load python/3.6.7
conda activate bio

#SAMPLE=ACMLCM1
#SAMPLE=ACMLCM10
#SAMPLE=ACMLCM11
#SAMPLE=ACMLCM12
#SAMPLE=ACMLCM13
#SAMPLE=ACMLCM14
#SAMPLE=ACMLCM15
#SAMPLE=ACMLCM16
#SAMPLE=ACMLCM17
#SAMPLE=ACMLCM18
#SAMPLE=ACMLCM19
#SAMPLE=ACMLCM2
#SAMPLE=ACMLCM20
#SAMPLE=ACMLCM21
#SAMPLE=ACMLCM22
#SAMPLE=ACMLCM23
#SAMPLE=ACMLCM24
#SAMPLE=ACMLCM3
#SAMPLE=ACMLCM4
#SAMPLE=ACMLCM5
#SAMPLE=ACMLCM6
#SAMPLE=ACMLCM7
#SAMPLE=ACMLCM8
#SAMPLE=ACMLCM9

PREFIX="gsnap-B73-${SAMPLE}"

## gsnap-B73-ACMLCM1.f2.sorted.bam
htseq-count --format=bam --order=pos --stranded=yes --type=gene --mode=union --nonunique=none $PREFIX.f2.sorted.bam /home/shokin/genomes/B73v4/Zea_mays.AGPv4.40.gtf > $PREFIX.htseq-count.txt
