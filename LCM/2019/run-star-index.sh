#!/bin/sh
#
## Name your job
#SBATCH -J STAR-INDEX
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

export PATH=/home/shokin/STAR/bin/Linux_x86_64:/usr/bin:$PATH

STAR --runMode genomeGenerate --runThreadN 24 \
     --genomeDir /home/shokin/genomes/Zm-B73-REFERENCE-GRAMENE-4.0 --genomeFastaFiles /home/shokin/genomes/Zm-B73-REFERENCE-GRAMENE-4.0/Zm-B73-REFERENCE-GRAMENE-4.0.fa
