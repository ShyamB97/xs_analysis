#!/bin/bash
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
echo $SCRIPT_DIR

PATH=$SCRIPT_DIR/tools/:$PATH