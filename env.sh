#!/bin/bash
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
echo $SCRIPT_DIR
source setup_install_tools.sh
source /cvmfs/dune.opensciencegrid.org/products/dune/setup_dune.sh
source $SCRIPT_DIR/dune/localProducts_*/setup 
mrbsetenv

# this is specifically for activating the correct python
export PYTHONPATH=
export PYTHONHOME=
eval "$($SCRIPT_DIR/install/miniforge/bin/conda shell.bash hook)"
conda activate python3.13
export PATH="$SCRIPT_DIR/install/miniforge/envs/python3.10/bin:$PATH"
which python
source $SCRIPT_DIR/pi0-analysis/analysis/env.sh 

pip install -r $SCRIPT_DIR/pi0-analysis/analysis/requirements.txt