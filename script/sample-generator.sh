#!/bin/bash


for i in `seq 10 10 100`
do
  cat ~/vol/data/patients/all.fa |\
  awk '/^>/ { if(i>0) printf("\n"); i++; printf("%s\t",$0); next;} {printf("%s",$0);} END { printf("\n");}' |\
  shuf |\
  head -n ${i}000 |\
  awk '{printf("%s\n%s\n",$1,$2)}' > ~/vol/data/patients/sample${i}k.fasta
  cat bwa-template.yaml | sed "s/\$SEQS/$i/" > ./jobs/reads/bwa-1-${i}k.yaml
done


