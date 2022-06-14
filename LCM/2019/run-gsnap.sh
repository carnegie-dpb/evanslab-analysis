#!/bin/sh
#
## Name your job
#SBATCH -J GSNAP-LCM
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

gsnap -t 24 -d B73v4 -A sam -N 1 --gunzip raw_data/ACMLCM1_1.fq.gz raw_data/ACMLCM1_2.fq.gz > gsnap-B73-ACMLCM1.sam
gsnap -t 24 -d B73v4 -A sam -N 1 --gunzip raw_data/ACMLCM2_1.fq.gz raw_data/ACMLCM2_2.fq.gz > gsnap-B73-ACMLCM2.sam
gsnap -t 24 -d B73v4 -A sam -N 1 --gunzip raw_data/ACMLCM3_1.fq.gz raw_data/ACMLCM3_2.fq.gz > gsnap-B73-ACMLCM3.sam
gsnap -t 24 -d B73v4 -A sam -N 1 --gunzip raw_data/ACMLCM4_1.fq.gz raw_data/ACMLCM4_2.fq.gz > gsnap-B73-ACMLCM4.sam
gsnap -t 24 -d B73v4 -A sam -N 1 --gunzip raw_data/ACMLCM5_1.fq.gz raw_data/ACMLCM5_2.fq.gz > gsnap-B73-ACMLCM5.sam
gsnap -t 24 -d B73v4 -A sam -N 1 --gunzip raw_data/ACMLCM6_1.fq.gz raw_data/ACMLCM6_2.fq.gz > gsnap-B73-ACMLCM6.sam
gsnap -t 24 -d B73v4 -A sam -N 1 --gunzip raw_data/ACMLCM7_1.fq.gz raw_data/ACMLCM7_2.fq.gz > gsnap-B73-ACMLCM7.sam
gsnap -t 24 -d B73v4 -A sam -N 1 --gunzip raw_data/ACMLCM8_1.fq.gz raw_data/ACMLCM8_2.fq.gz > gsnap-B73-ACMLCM8.sam
gsnap -t 24 -d B73v4 -A sam -N 1 --gunzip raw_data/ACMLCM9_1.fq.gz raw_data/ACMLCM9_2.fq.gz > gsnap-B73-ACMLCM9.sam
gsnap -t 24 -d B73v4 -A sam -N 1 --gunzip raw_data/ACMLCM10_1.fq.gz raw_data/ACMLCM10_2.fq.gz > gsnap-B73-ACMLCM10.sam
gsnap -t 24 -d B73v4 -A sam -N 1 --gunzip raw_data/ACMLCM11_1.fq.gz raw_data/ACMLCM11_2.fq.gz > gsnap-B73-ACMLCM11.sam
gsnap -t 24 -d B73v4 -A sam -N 1 --gunzip raw_data/ACMLCM12_1.fq.gz raw_data/ACMLCM12_2.fq.gz > gsnap-B73-ACMLCM12.sam
gsnap -t 24 -d B73v4 -A sam -N 1 --gunzip raw_data/ACMLCM13_1.fq.gz raw_data/ACMLCM13_2.fq.gz > gsnap-B73-ACMLCM13.sam
gsnap -t 24 -d B73v4 -A sam -N 1 --gunzip raw_data/ACMLCM14_1.fq.gz raw_data/ACMLCM14_2.fq.gz > gsnap-B73-ACMLCM14.sam
gsnap -t 24 -d B73v4 -A sam -N 1 --gunzip raw_data/ACMLCM15_1.fq.gz raw_data/ACMLCM15_2.fq.gz > gsnap-B73-ACMLCM15.sam
gsnap -t 24 -d B73v4 -A sam -N 1 --gunzip raw_data/ACMLCM16_1.fq.gz raw_data/ACMLCM16_2.fq.gz > gsnap-B73-ACMLCM16.sam
gsnap -t 24 -d B73v4 -A sam -N 1 --gunzip raw_data/ACMLCM17_1.fq.gz raw_data/ACMLCM17_2.fq.gz > gsnap-B73-ACMLCM17.sam
gsnap -t 24 -d B73v4 -A sam -N 1 --gunzip raw_data/ACMLCM18_1.fq.gz raw_data/ACMLCM18_2.fq.gz > gsnap-B73-ACMLCM18.sam
gsnap -t 24 -d B73v4 -A sam -N 1 --gunzip raw_data/ACMLCM19_1.fq.gz raw_data/ACMLCM19_2.fq.gz > gsnap-B73-ACMLCM19.sam
gsnap -t 24 -d B73v4 -A sam -N 1 --gunzip raw_data/ACMLCM20_1.fq.gz raw_data/ACMLCM20_2.fq.gz > gsnap-B73-ACMLCM20.sam
gsnap -t 24 -d B73v4 -A sam -N 1 --gunzip raw_data/ACMLCM21_1.fq.gz raw_data/ACMLCM21_2.fq.gz > gsnap-B73-ACMLCM21.sam
gsnap -t 24 -d B73v4 -A sam -N 1 --gunzip raw_data/ACMLCM22_1.fq.gz raw_data/ACMLCM22_2.fq.gz > gsnap-B73-ACMLCM22.sam
gsnap -t 24 -d B73v4 -A sam -N 1 --gunzip raw_data/ACMLCM23_1.fq.gz raw_data/ACMLCM23_2.fq.gz > gsnap-B73-ACMLCM23.sam
gsnap -t 24 -d B73v4 -A sam -N 1 --gunzip raw_data/ACMLCM24_1.fq.gz raw_data/ACMLCM24_2.fq.gz > gsnap-B73-ACMLCM24.sam
