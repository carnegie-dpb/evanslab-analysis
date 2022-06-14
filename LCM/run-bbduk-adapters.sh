#!/bin/sh
ROOT=$1

bbduk.sh ref=~/bbmap/resources/adapters.fa ktrim=r k=23 mink=11 hdist=1 tpe tbo in=${ROOT}_fwd.fq out=${ROOT}_at_1.fq
bbduk.sh ref=~/bbmap/resources/adapters.fa ktrim=r k=23 mink=11 hdist=1 tpe tbo in=${ROOT}_rev.fq out=${ROOT}_at_2.fq
