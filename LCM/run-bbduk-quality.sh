#!/bin/sh
# Quality trimming:
# bbduk.sh in=reads.fq out=clean.fq qtrim=r trimq=10
# This will quality-trim to Q10 using the Phred algorithm, which is more accurate than naive trimming. “qtrim=r” means it will trim the right side only;
# you can alternatively set “qtrim=l” for left or “qtrim=rl” for both. If quality trimming is enabled, it happens after all kmer-based operations.

# ACMLCM1_rrna_at_1.fq
# ACMLCM1_rrna_at_2.fq

SAMPLE=$1

bbduk.sh minlength=100 qtrim=rl trimq=30 in=${SAMPLE}_rrna_at_1.fq out=${SAMPLE}_rrna_at_q_1.fq
bbduk.sh minlength=100 qtrim=rl trimq=30 in=${SAMPLE}_rrna_at_2.fq out=${SAMPLE}_rrna_at_q_2.fq

