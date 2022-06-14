#!/bin/sh
SAMPLE=$1

## STAR-ACMLCM1/Aligned.sortedByCoord.out.bam
## STAR-ACMLCM1/mate1Aligned.sortedByCoord.out.bam
## STAR-ACMLCM1/mate2Aligned.sortedByCoord.out.bam

DIR=STAR-${SAMPLE}

featureCounts -p -M --fraction --countReadPairs -g Name -t transposable_element \
              -a Zm-B73-REFERENCE-GRAMENE-4.0.TEs.1.0.gff3 \
              -o $DIR/$SAMPLE.Aligned.TE.counts \
              $DIR/Aligned.sortedByCoord.out.bam

featureCounts -M --fraction --countReadPairs -g Name -t transposable_element \
              -a Zm-B73-REFERENCE-GRAMENE-4.0.TEs.1.0.gff3 \
              -o $DIR/$SAMPLE.mate1.TE.counts \
              $DIR/mate1Aligned.sortedByCoord.out.bam

featureCounts -M --fraction --countReadPairs -g Name -t transposable_element \
              -a Zm-B73-REFERENCE-GRAMENE-4.0.TEs.1.0.gff3 \
              -o $DIR/$SAMPLE.mate2.TE.counts \
              $DIR/mate2Aligned.sortedByCoord.out.bam

