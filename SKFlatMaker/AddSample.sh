#!/bin/bash

LIST_ZMASS=(5 10 20 50)
PtCut=(20 30 50 80 120 170 9999)
LIST_ERA=("2016preVFP" "2016postVFP")

dir=/data9/Users/taehee/ZRadiation/SKFlatNtuple

for era in ${LIST_ERA[@]}
do
for z in ${LIST_ZMASS[@]}
do
  for ((icut=0;icut<${#PtCut[@]}-1;icut++))
    do
      PtMin=${PtCut[${icut}]}
      PtMax=${PtCut[${icut}+1]}
      alias=QCD_ZprimeTo2Mu_Zmass-$z'_JetPt-'$PtMin'To'$PtMax
      mkdir -p $dir/$era/$alias
      mv $dir/$era/SKFlatNtuple_$era'_MINIAOD_zmass'$z'_Pt-'$PtMin'to'$PtMax'_'*.root $dir/$era/$alias
      ls $dir/$era/$alias'/'*.root > /data6/Users/taehee/SKFlatAnalyzer/data/Run2UltraLegacy_v3/$era/Sample/ForSNU/$alias'.txt'
      done
  done
  done
