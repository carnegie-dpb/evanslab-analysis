#!/bin/sh
GENOMEDIR=Zm-B73-REFERENCE-GRAMENE-4.0-TE
FASTAFILE=Zm-B73-REFERENCE-GRAMENE-4.0.fa
GFFFILE=Zm-B73-REFERENCE-GRAMENE-4.0.TEs.1.0.gff3

STAR --runMode genomeGenerate --runThreadN 128 \
	--genomeDir $GENOMEDIR --genomeFastaFiles $GENOMEDIR/$FASTAFILE \
	--sjdbGTFfile $GENOMEDIR/$GFFFILE --sjdbGTFfeatureExon transposable_element
