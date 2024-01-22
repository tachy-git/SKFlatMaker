#!/bin/bash

cd /data6/Users/taehee/Run2UltraLegacy_v3__CMSSW_10_6_29/src/SKFlatMaker
dir=/data9/Users/taehee/ZRadiation/SKFlatNtuple

############
# move files
############
if [ ! -d "log" ];then
  mkdir log
fi
mv run*.std* log
mv run.log log
mv SKFlatNtuple_2016preVFP*root $dir/2016preVFP
mv SKFlatNtuple_2016postVFP*root $dir/2016postVFP
