#!/bin/sh
SAMPLE=$1
FEATURE=$2

## STAR-TE-ACMLCM1-helitron/Aligned.sortedByCoord.out.bam
## STAR-TE-ACMLCM1-helitron/mate1Aligned.sortedByCoord.out.bam
## STAR-TE-ACMLCM1-helitron/mate2Aligned.sortedByCoord.out.bam

DIR=STAR-TE-${SAMPLE}-${FEATURE}

featureCounts -p -M --fraction --countReadPairs -F GTF -g Name \
              -a ../Zm-B73-REFERENCE-GRAMENE-4.0/Zm-B73-REFERENCE-GRAMENE-4.0.TEs.1.0.gff3 \
              -t $FEATURE \
              -o $SAMPLE.Aligned \
              $DIR/Aligned.sortedByCoord.out.bam

featureCounts -M --fraction --countReadPairs -F GTF -g Name \
              -a ../Zm-B73-REFERENCE-GRAMENE-4.0/Zm-B73-REFERENCE-GRAMENE-4.0.TEs.1.0.gff3 \
              -t $FEATURE \
              -o $SAMPLE.mate1 \
              $DIR/mate1Aligned.sortedByCoord.out.bam

featureCounts -M --fraction --countReadPairs -F GTF -g Name \
              -a ../Zm-B73-REFERENCE-GRAMENE-4.0/Zm-B73-REFERENCE-GRAMENE-4.0.TEs.1.0.gff3 \
              -t $FEATURE \
              -o $SAMPLE.mate2 \
              $DIR/mate2Aligned.sortedByCoord.out.bam

