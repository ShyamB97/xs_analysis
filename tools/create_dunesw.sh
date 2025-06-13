#!/bin/bash
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
echo $SCRIPT_DIR
cd $SCRIPT_DIR/.. # create in main area

get_version () {
    {
        cd /tmp/
        git clone https://github.com/DUNE/protoduneana.git
        cd protoduneana
        git switch feature/calcuttj_fitter_redesign >/dev/null # the output of this command ends up in the return value if not suppressed (for some reason?)
        match=(`cat ups/product_deps | grep duneprototypes -m 1`)
        cd /tmp
        rm -rf protoduneana
        echo ${match[-1]}
    } || # if the above fails, cleanup the cloned files.
    {
        cd /tmp
        rm -rf protoduneana
    }
}
VERSION=$(get_version)

source /cvmfs/dune.opensciencegrid.org/products/dune/setup_dune.sh
mkdir dune
cd dune
mrb newDev -v $VERSION -q e26:prof
source localProducts*/setup

mrb g protoduneana
cd srcs/protoduneana/; 
git switch feature/calcuttj_fitter_redesign
cd -

mrb g dunesw
cd srcs/dunesw/;
git checkout $VERSION
cd -

mrbsetenv

mrb i -j "$(grep -c ^processor /proc/cpuinfo)"
exit 0
