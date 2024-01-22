#!/bin/bash

cd /data6/Users/taehee/Run2UltraLegacy_v3__CMSSW_10_6_29/src/SKFlatMaker
source setup.sh

dir=/data9/Users/taehee/ZRadiation
cmsRun RunSKFlatMaker.py era=2016preVFP sampletype=mc maxEvents=10000 inputFiles='file:'$dir'/MINIAOD/'$1 outputFile=SKFlatNtuple_2016preVFP_$1
cmsRun RunSKFlatMaker.py era=2016postVFP sampletype=mc maxEvents=10000 inputFiles='file:'$dir'/MINIAOD/'$1 outputFile=SKFlatNtuple_2016postVFP_$1

#mv SKFlatNtuple_2016preVFP*root $dir/SKFlatNtuple/2016preVFP
#mv SKFlatNtuple_2016postVFP*root $dir/SKFlatNtuple/2016postVFP
