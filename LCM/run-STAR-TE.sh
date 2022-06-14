#!/bin/sh

SAMPLE=$1
FEATURE=$2

DIRNAME="STAR-TE-${SAMPLE}-${FEATURE}"

GENOMEDIR="../Zm-B73-REFERENCE-GRAMENE-4.0"
GFFFILE="Zm-B73-REFERENCE-GRAMENE-4.0.TEs.1.0.gff3"


mkdir -p $DIRNAME
ulimit -n 16384

## ACMLCM1_rrna_at_q_1.fq
## ACMLCM1_rrna_at_q_2.fq
STAR --runMode alignReads --runThreadN 128 --readFilesType Fastx --limitBAMsortRAM 50000000000 \
     --genomeDir $GENOMEDIR \
     --sjdbGTFfile $GENOMEDIR/$GFFFILE \
     --outFileNamePrefix "${DIRNAME}/" \
     --readFilesIn "${SAMPLE}_rrna_at_q_1.fq"  "${SAMPLE}_rrna_at_q_2.fq" \
     --sjdbGTFfeatureExon $FEATURE \
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
     --sjdbGTFfile $GENOMEDIR/$GFFFILE \
     --outFileNamePrefix "${DIRNAME}/mate1" \
     --readFilesIn "${DIRNAME}/Unmapped.out.mate1" \
     --sjdbGTFfeatureExon $FEATURE \
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
     --sjdbGTFfile $GENOMEDIR/$GFFFILE \
     --outFileNamePrefix "${DIRNAME}/mate2" \
     --readFilesIn "${DIRNAME}/Unmapped.out.mate2" \
     --sjdbGTFfeatureExon $FEATURE \
     --outMultimapperOrder Random \
     --outSAMmultNmax -1 \
     --outFilterMultimapNmax 100 \
     --outReadsUnmapped Fastx \
     --outSAMunmapped Within \
     --outSAMtype BAM SortedByCoordinate \
     --outSAMmode Full \
     --twopassMode Basic

