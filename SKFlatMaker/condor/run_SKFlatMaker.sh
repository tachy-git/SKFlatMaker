#!/bin/bash

cd /data6/Users/taehee/Run2UltraLegacy_v3__CMSSW_10_6_29/src/SKFlatMaker
source setup.sh
cd SKFlatMaker/condor

cmsRun RunSKFlatMaker.py era=2016postVFP sampletype=mc maxEvents=-1 inputFiles="file:${1}"
