#!/bin/bash

DIRECTORY=/gv0/Users/taehee/HerwigSample/SKFlatNtuple
SAMPLES=($(ls $DIRECTORY))

for sample in "${SAMPLES[@]}"; do
    alias="HerwigBSMshower_$sample"
    find $DIRECTORY/$sample -type f > /data6/Users/taehee/SKFlatAnalyzer/data/Run2UltraLegacy_v3/2016postVFP/Sample/ForSNU/$alias'.txt'
done

cd /data6/Users/taehee/SKFlatAnalyzer
source setup.sh
SKFlat.py -a GetEffLumi -e 2016a -n 10 -i $alias &
