#!/bin/sh

SAMPLE=$1

DIRNAME="STAR-rRNA-${SAMPLE}"

GENOMEDIR="../all-rrna"
mkdir -p $DIRNAME
ulimit -n 16384

STAR --runMode alignReads --runThreadN 128 --readFilesType Fastx --limitBAMsortRAM 50000000000 \
     --genomeDir $GENOMEDIR \
     --outFileNamePrefix "${DIRNAME}/" \
     --readFilesIn "reads/${SAMPLE}_1.fq.gz"  "reads/${SAMPLE}_2.fq.gz" \
     --readFilesCommand "zcat" \
     --outReadsUnmapped Fastx \
     --outSAMunmapped Within \
     --outSAMattributes NH HI AS NM MD \
     --outSAMstrandField intronMotif \
     --outSAMtype BAM SortedByCoordinate \
     --outSAMmode Full \
     --twopassMode Basic \
     --scoreDelOpen -1000 --scoreInsOpen -1000 \
     --outFilterMismatchNmax 0

# ## use --sjdbGTFfile to apply annotations at mapping time
# STAR --runMode alignReads --runThreadN 24 --readFilesType Fastx --limitBAMsortRAM 50000000000 \
#      --genomeDir $GENOMEDIR --outFileNamePrefix "${DIRNAME}/" \
#      --outSAMtype BAM SortedByCoordinate --outSAMmode Full --outReadsUnmapped None --outSAMunmapped None --outSAMattributes NH HI AS NM MD --outSAMstrandField None \
#      --quantMode -  --twopassMode Basic \
#      --outFilterMultimapNmax 10 \
#      --sjdbGTFfile $GTFFILE \
#      --readFilesCommand "zcat" --readFilesPrefix "raw_data/" --readFilesIn $READS
