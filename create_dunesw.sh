#!/bin/bash
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
echo $SCRIPT_DIR

# also can clone the cross section code + dune sw and install both

# /cvmfs/oasis.opensciencegrid.org/mis/apptainer/current/bin/apptainer shell --shell=/bin/bash \ -B /cvmfs,/exp,/nashome,/opt,/run/user,/etc/hostname,/etc/hosts,/etc/krb5.conf --ipc --pid \ /cvmfs/singularity.opensciencegrid.org/fermilab/fnal-dev-sl7:latest export UPS_OVERRIDE="-H Linux64bit+3.10-2.17"
source /cvmfs/dune.opensciencegrid.org/products/dune/setup_dune.sh
mkdir dune
cd dune
mrb newDev -v v10_07_00 -q e26:prof
source localProducts*/setup

mrb g protoduneana
cd srcs/protoduneana/; 
git checkout -b feature/calcuttj_fitter_redesign
cd -

mrb g dunesw
cd srcs/dunesw/;
git checkout v10_07_00d00
cd -

mrbsetenv

mrb i -j "$(grep -c ^processor /proc/cpuinfo)"
exit 0
