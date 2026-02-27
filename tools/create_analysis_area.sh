#!/bin/bash
set -e
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
echo $SCRIPT_DIR
cd $SCRIPT_DIR/..

git clone https://github.com/dlindebaum/pion-argon-xs-analysis.git