#!/bin/sh

SAMPLE=$1

DIRNAME="STAR-${SAMPLE}"

GENOMEDIR="../Zm-B73-REFERENCE-GRAMENE-4.0"

mkdir -p $DIRNAME
ulimit -n 16384

## ACMLCM1_rrna_at_q_1.fq
## ACMLCM1_rrna_at_q_2.fq
STAR --runMode alignReads --runThreadN 128 --readFilesType Fastx --limitBAMsortRAM 50000000000 \
     --genomeDir $GENOMEDIR \
     --outFileNamePrefix "${DIRNAME}/" \
     --readFilesIn "${SAMPLE}_rrna_at_q_1.fq"  "${SAMPLE}_rrna_at_q_2.fq" \
     --outMultimapperOrder Random \
     --outSAMmultNmax -1 \
     --outFilterMultimapNmax 100 \
     --outReadsUnmapped Fastx \
     --outSAMunmapped Within \
     --outSAMtype BAM SortedByCoordinate \
     --outSAMmode Full \
     --twopassMode Basic 

## Unmapped.out.mate1
STAR --runMode alignReads --runThreadN 128 --readFilesType Fastx --limitBAMsortRAM 50000000000 \
     --genomeDir $GENOMEDIR \
     --outFileNamePrefix "${DIRNAME}/mate1" \
     --readFilesIn "${DIRNAME}/Unmapped.out.mate1" \
     --outMultimapperOrder Random \
     --outSAMmultNmax -1 \
     --outFilterMultimapNmax 100 \
     --outReadsUnmapped Fastx \
     --outSAMunmapped Within \
     --outSAMtype BAM SortedByCoordinate \
     --outSAMmode Full \
     --twopassMode Basic

## Unmapped.out.mate2
STAR --runMode alignReads --runThreadN 128 --readFilesType Fastx --limitBAMsortRAM 50000000000 \
     --genomeDir $GENOMEDIR \
     --outFileNamePrefix "${DIRNAME}/mate2" \
     --readFilesIn "${DIRNAME}/Unmapped.out.mate2" \
     --outMultimapperOrder Random \
     --outSAMmultNmax -1 \
     --outFilterMultimapNmax 100 \
     --outReadsUnmapped Fastx \
     --outSAMunmapped Within \
     --outSAMtype BAM SortedByCoordinate \
     --outSAMmode Full \
     --twopassMode Basic

