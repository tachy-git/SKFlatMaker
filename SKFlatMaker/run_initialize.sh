#!/bin/bash

dir=/data6/Users/taehee/Run2UltraLegacy_v3__CMSSW_10_6_29/src/SKFlatMaker
cd /data9/Users/taehee/ZRadiation/MINIAOD/
ls MINIAOD_zmass*root > $dir/file.lst

############
# make directory
############
cd /data9/Users/taehee/ZRadiation/
if [ ! -d "SKFlatNtuple" ];then
  mkdir SKFlatNtuple
  if [ ! -d "2016preVFP" ];then
  mkdir -p SKFlatNtuple/2016preVFP
  mkdir -p SKFlatNtuple/2016postVFP
  fi
fi
