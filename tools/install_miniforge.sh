#!/bin/bash
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
echo $SCRIPT_DIR
cd $SCRIPT_DIR/..

mkdir install
cd install
wget "https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-$(uname)-$(uname -m).sh"
bash Miniforge3-$(uname)-$(uname -m).sh -b -s -p miniforge/
eval "$(miniforge/bin/conda shell.bash hook)"
# conda init, skip this, as it add env to path
conda create -y -n python3.13 python=3.13
conda install -y libstdcxx-ng # required to tables, used by pandas
conda activate python3.13
rm Miniforge3-$(uname)-$(uname -m).sh


# # this is specifically for activating the correct python
# export PYTHONPATH=
# export PYTHONHOME=
# eval "$(/exp/dune/app/users/sbhuller/ana/miniforge/bin/conda shell.bash hook)"
# which python
# conda activate python3.10
# which python

# export PATH="/usr/local/bin/php-overrides:$PATH"
# export PATH="/exp/dune/app/users/sbhuller/ana/miniforge/envs/python3.10/bin:$PATH"
# echo $PATH
# clear
# which python
