#!/bin/bash

SAMPLES=("1196111_z5_60_70" "1196129_z5_70_80" "1196130_z5_80_90" "1196131_z5_90_100" "1196132_z5_100_120" "1196133_z5_120_150" "2493468_z5_150_190" "2493469_z5_190_240" "2493470_z5_240_300" "2493471_z5_300_400" "2493472_z5_400_500" "2493473_z5_500_9999")

cat <<EOT > submit_SKFlatMaker.jds
executable      = run_SKFlatMaker.sh
arguments       = \$(file)
output          = job.\$(Cluster).\$(Process).out
error           = job.\$(Cluster).\$(Process).err
log             = job.\$(Cluster).\$(Process).log

Getenv=True

should_transfer_files       = YES
#when_to_transfer_output     = ON_EXIT
#transfer_input_Files        = \$(sample)
#transfer_output_files       = SKFlatNtuple_\$(sample)

## you can request more resource
#request_memory = 8000
#request_cpus = 4

## you can require some conditions
#requirements = TARGET.FileSystemDomain==My.FileSystemDomain

queue file from file.lst
## you can submit many jobs at once
#queue 10
EOT

for sample in "${SAMPLES[@]}"; do
    ls /gv0/Users/taehee/HerwigSample/$sample/MiniAOD*root > file.lst
    echo "Submitting SKFlatMaker for $sample..."
    condor_submit submit_SKFlatMaker.jds
done
