#!/bin/sh
SAMPLE=$1

rm -rf /home/shokin/sortmerna

sortmerna --ref ../Zea-mays-rrna.fasta \
	--reads reads/${SAMPLE}_1.fq.gz --reads reads/${SAMPLE}_2.fq.gz \
	--threads 128 --fastx \
	--out2 --other ${SAMPLE}_rrna
