#!/bin/sh
#
## Name your job
#SBATCH -J postprocess-LCM
#
## Change the queue
#SBATCH -p DPB
#
## Use 24 CPUs
#SBATCH -c 24
#
## Set the number of nodes
#SBATCH --nodes=1
#
## With max RAM per node
#SBATCH --mem=0

module load SAMtools

## get the stats
samtools flagstat gsnap-B73-ACMLCM1.sam > gsnap-B73-ACMLCM1.flagstat 
samtools flagstat gsnap-B73-ACMLCM2.sam > gsnap-B73-ACMLCM2.flagstat 
samtools flagstat gsnap-B73-ACMLCM3.sam > gsnap-B73-ACMLCM3.flagstat 
samtools flagstat gsnap-B73-ACMLCM4.sam > gsnap-B73-ACMLCM4.flagstat 
samtools flagstat gsnap-B73-ACMLCM5.sam > gsnap-B73-ACMLCM5.flagstat 
samtools flagstat gsnap-B73-ACMLCM6.sam > gsnap-B73-ACMLCM6.flagstat 
samtools flagstat gsnap-B73-ACMLCM7.sam > gsnap-B73-ACMLCM7.flagstat 
samtools flagstat gsnap-B73-ACMLCM8.sam > gsnap-B73-ACMLCM8.flagstat 
samtools flagstat gsnap-B73-ACMLCM9.sam > gsnap-B73-ACMLCM9.flagstat 
samtools flagstat gsnap-B73-ACMLCM10.sam > gsnap-B73-ACMLCM10.flagstat 
samtools flagstat gsnap-B73-ACMLCM11.sam > gsnap-B73-ACMLCM11.flagstat 
samtools flagstat gsnap-B73-ACMLCM12.sam > gsnap-B73-ACMLCM12.flagstat 
samtools flagstat gsnap-B73-ACMLCM13.sam > gsnap-B73-ACMLCM13.flagstat 
samtools flagstat gsnap-B73-ACMLCM14.sam > gsnap-B73-ACMLCM14.flagstat 
samtools flagstat gsnap-B73-ACMLCM15.sam > gsnap-B73-ACMLCM15.flagstat 
samtools flagstat gsnap-B73-ACMLCM16.sam > gsnap-B73-ACMLCM16.flagstat 
samtools flagstat gsnap-B73-ACMLCM17.sam > gsnap-B73-ACMLCM17.flagstat 
samtools flagstat gsnap-B73-ACMLCM18.sam > gsnap-B73-ACMLCM18.flagstat 
samtools flagstat gsnap-B73-ACMLCM19.sam > gsnap-B73-ACMLCM19.flagstat 
samtools flagstat gsnap-B73-ACMLCM20.sam > gsnap-B73-ACMLCM20.flagstat 
samtools flagstat gsnap-B73-ACMLCM21.sam > gsnap-B73-ACMLCM21.flagstat 
samtools flagstat gsnap-B73-ACMLCM22.sam > gsnap-B73-ACMLCM22.flagstat 
samtools flagstat gsnap-B73-ACMLCM23.sam > gsnap-B73-ACMLCM23.flagstat 
samtools flagstat gsnap-B73-ACMLCM24.sam > gsnap-B73-ACMLCM24.flagstat 

## extract properly mapped reads
samtools view -b -f 2 gsnap-B73-ACMLCM1.sam > gsnap-B73-ACMLCM1.f2.bam 
samtools view -b -f 2 gsnap-B73-ACMLCM2.sam > gsnap-B73-ACMLCM2.f2.bam 
samtools view -b -f 2 gsnap-B73-ACMLCM3.sam > gsnap-B73-ACMLCM3.f2.bam 
samtools view -b -f 2 gsnap-B73-ACMLCM4.sam > gsnap-B73-ACMLCM4.f2.bam 
samtools view -b -f 2 gsnap-B73-ACMLCM5.sam > gsnap-B73-ACMLCM5.f2.bam 
samtools view -b -f 2 gsnap-B73-ACMLCM6.sam > gsnap-B73-ACMLCM6.f2.bam 
samtools view -b -f 2 gsnap-B73-ACMLCM7.sam > gsnap-B73-ACMLCM7.f2.bam 
samtools view -b -f 2 gsnap-B73-ACMLCM8.sam > gsnap-B73-ACMLCM8.f2.bam 
samtools view -b -f 2 gsnap-B73-ACMLCM9.sam > gsnap-B73-ACMLCM9.f2.bam 
samtools view -b -f 2 gsnap-B73-ACMLCM10.sam > gsnap-B73-ACMLCM10.f2.bam 
samtools view -b -f 2 gsnap-B73-ACMLCM11.sam > gsnap-B73-ACMLCM11.f2.bam 
samtools view -b -f 2 gsnap-B73-ACMLCM12.sam > gsnap-B73-ACMLCM12.f2.bam 
samtools view -b -f 2 gsnap-B73-ACMLCM13.sam > gsnap-B73-ACMLCM13.f2.bam 
samtools view -b -f 2 gsnap-B73-ACMLCM14.sam > gsnap-B73-ACMLCM14.f2.bam 
samtools view -b -f 2 gsnap-B73-ACMLCM15.sam > gsnap-B73-ACMLCM15.f2.bam 
samtools view -b -f 2 gsnap-B73-ACMLCM16.sam > gsnap-B73-ACMLCM16.f2.bam 
samtools view -b -f 2 gsnap-B73-ACMLCM17.sam > gsnap-B73-ACMLCM17.f2.bam 
samtools view -b -f 2 gsnap-B73-ACMLCM18.sam > gsnap-B73-ACMLCM18.f2.bam 
samtools view -b -f 2 gsnap-B73-ACMLCM19.sam > gsnap-B73-ACMLCM19.f2.bam 
samtools view -b -f 2 gsnap-B73-ACMLCM20.sam > gsnap-B73-ACMLCM20.f2.bam 
samtools view -b -f 2 gsnap-B73-ACMLCM21.sam > gsnap-B73-ACMLCM21.f2.bam 
samtools view -b -f 2 gsnap-B73-ACMLCM22.sam > gsnap-B73-ACMLCM22.f2.bam 
samtools view -b -f 2 gsnap-B73-ACMLCM23.sam > gsnap-B73-ACMLCM23.f2.bam 
samtools view -b -f 2 gsnap-B73-ACMLCM24.sam > gsnap-B73-ACMLCM24.f2.bam 

## sort -@ 24 -m 4G
samtools sort -@ 24 -m 4G gsnap-B73-ACMLCM1.f2.bam > gsnap-B73-ACMLCM1.f2.sorted.bam 
samtools sort -@ 24 -m 4G gsnap-B73-ACMLCM2.f2.bam > gsnap-B73-ACMLCM2.f2.sorted.bam 
samtools sort -@ 24 -m 4G gsnap-B73-ACMLCM3.f2.bam > gsnap-B73-ACMLCM3.f2.sorted.bam 
samtools sort -@ 24 -m 4G gsnap-B73-ACMLCM4.f2.bam > gsnap-B73-ACMLCM4.f2.sorted.bam 
samtools sort -@ 24 -m 4G gsnap-B73-ACMLCM5.f2.bam > gsnap-B73-ACMLCM5.f2.sorted.bam 
samtools sort -@ 24 -m 4G gsnap-B73-ACMLCM6.f2.bam > gsnap-B73-ACMLCM6.f2.sorted.bam 
samtools sort -@ 24 -m 4G gsnap-B73-ACMLCM7.f2.bam > gsnap-B73-ACMLCM7.f2.sorted.bam 
samtools sort -@ 24 -m 4G gsnap-B73-ACMLCM8.f2.bam > gsnap-B73-ACMLCM8.f2.sorted.bam 
samtools sort -@ 24 -m 4G gsnap-B73-ACMLCM9.f2.bam > gsnap-B73-ACMLCM9.f2.sorted.bam 
samtools sort -@ 24 -m 4G gsnap-B73-ACMLCM10.f2.bam > gsnap-B73-ACMLCM10.f2.sorted.bam 
samtools sort -@ 24 -m 4G gsnap-B73-ACMLCM11.f2.bam > gsnap-B73-ACMLCM11.f2.sorted.bam 
samtools sort -@ 24 -m 4G gsnap-B73-ACMLCM12.f2.bam > gsnap-B73-ACMLCM12.f2.sorted.bam 
samtools sort -@ 24 -m 4G gsnap-B73-ACMLCM13.f2.bam > gsnap-B73-ACMLCM13.f2.sorted.bam 
samtools sort -@ 24 -m 4G gsnap-B73-ACMLCM14.f2.bam > gsnap-B73-ACMLCM14.f2.sorted.bam 
samtools sort -@ 24 -m 4G gsnap-B73-ACMLCM15.f2.bam > gsnap-B73-ACMLCM15.f2.sorted.bam 
samtools sort -@ 24 -m 4G gsnap-B73-ACMLCM16.f2.bam > gsnap-B73-ACMLCM16.f2.sorted.bam 
samtools sort -@ 24 -m 4G gsnap-B73-ACMLCM17.f2.bam > gsnap-B73-ACMLCM17.f2.sorted.bam 
samtools sort -@ 24 -m 4G gsnap-B73-ACMLCM18.f2.bam > gsnap-B73-ACMLCM18.f2.sorted.bam 
samtools sort -@ 24 -m 4G gsnap-B73-ACMLCM19.f2.bam > gsnap-B73-ACMLCM19.f2.sorted.bam 
samtools sort -@ 24 -m 4G gsnap-B73-ACMLCM20.f2.bam > gsnap-B73-ACMLCM20.f2.sorted.bam 
samtools sort -@ 24 -m 4G gsnap-B73-ACMLCM21.f2.bam > gsnap-B73-ACMLCM21.f2.sorted.bam 
samtools sort -@ 24 -m 4G gsnap-B73-ACMLCM22.f2.bam > gsnap-B73-ACMLCM22.f2.sorted.bam 
samtools sort -@ 24 -m 4G gsnap-B73-ACMLCM23.f2.bam > gsnap-B73-ACMLCM23.f2.sorted.bam 
samtools sort -@ 24 -m 4G gsnap-B73-ACMLCM24.f2.bam > gsnap-B73-ACMLCM24.f2.sorted.bam 
