#!/bin/bash
set -e
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
echo $SCRIPT_DIR
cd $SCRIPT_DIR/..

git clone https://github.com/bristol-dune/pi0-analysis.git
cd pi0-analysis
git checkout sbhuller/python-v3.13 # The current branch that is most up-to-date
