#!/bin/sh
#
## Name your job
#SBATCH -J STAR-LCM
#
## Change the queue
#SBATCH -p DPB
#
## Use all CPUs
#SBATCH -c 24
#
## Set the number of nodes
#SBATCH --nodes=1
#
## With max RAM per node
#SBATCH --mem=0

# SAMPLE=ACMLCM1
# SAMPLE=ACMLCM2
# SAMPLE=ACMLCM3
# SAMPLE=ACMLCM4
SAMPLE=ACMLCM5
# SAMPLE=ACMLCM6
# SAMPLE=ACMLCM7
# SAMPLE=ACMLCM8
# SAMPLE=ACMLCM9
# SAMPLE=ACMLCM10
# SAMPLE=ACMLCM11
# SAMPLE=ACMLCM12
# SAMPLE=ACMLCM13
# SAMPLE=ACMLCM14
# SAMPLE=ACMLCM15
# SAMPLE=ACMLCM16
# SAMPLE=ACMLCM17
# SAMPLE=ACMLCM18
# SAMPLE=ACMLCM19
# SAMPLE=ACMLCM20
# SAMPLE=ACMLCM21
# SAMPLE=ACMLCM22
# SAMPLE=ACMLCM23
# SAMPLE=ACMLCM24

export PATH=/home/shokin/STAR/bin/Linux_x86_64:/usr/bin:$PATH
DIR="STAR-B73-${SAMPLE}/"
mkdir $DIR

echo "uname -n:"
uname -n

echo "ulimit -a:"
ulimit -a

STAR --runMode alignReads --runThreadN 24 --readFilesType Fastx --limitBAMsortRAM 50000000000 \
     --genomeDir ~/genomes/B73v4 --outFileNamePrefix ${DIR} \
     --outSAMtype BAM SortedByCoordinate --outSAMmode Full --outReadsUnmapped None --outSAMunmapped None --outSAMattributes NH HI AS NM MD --outSAMstrandField None \
     --quantMode -  --twopassMode None \
     --outFilterMultimapNmax 10 \
     --readFilesIn "raw_data/${SAMPLE}_1.fq.gz"  "raw_data/${SAMPLE}_2.fq.gz"
