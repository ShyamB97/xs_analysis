#!/bin/bash
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
echo $SCRIPT_DIR

git clone https://github.com/bristol-dune/pi0-analysis.git
cd pi0-analysis
git checkout sbhuller/python-code # The current branch that is most up-to-date
cd -

# this needs to happen within the apptainer to assign the correct gcc versions.
# eval "$($SCRIPT_DIR/install/miniforge/bin/conda shell.bash hook)"
# conda activate python3.10
# pip install -r $SCRIPT_DIR/pi0-analysis/analysis/requirements.txt