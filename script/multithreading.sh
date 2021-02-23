#!/bin/bash

for i in `seq 1 1 8`
do
  cat multi-bench.yaml | sed "s/\$T/$i/" > ./jobs/multi/bwa-$i-all.yaml
done

