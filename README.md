## Requirements
- cvmfs
- you need permission to clone the pion-argon-xs-analysis repo.

## First time installation
```
source setup_install_tools.sh
install
source env.sh
mkdir work # make a work directory area that is not tracked by git
```
<!-- container shell # start an apptainer shell -->

## Each time you login
```
source setup_install_tools.sh # add container script to path
source env.sh
```
<!-- container shell # start an apptainer shell -->

## Development
- Make sure any files you generate are kept in a directory called `work`.

- Changes to the software can be made and you can push them to their respective repos.

<!-- ## Caveats/To Do's
- Branches and versions will change, in particular, protoduneana will be updated, requiring new dependencies on dunesw that cannot be retroactively applied. So setup of the area after push may not work and will require a fresh install (may segment the installation process for this reason).
- Figure out a mechanism to get the correct version of the protoduneana repo to ensure FTI works without intervention.
- If you try this on your own machine and apptainer won't start, try
```
sudo sysctl -w kernel.apparmor_restrict_unprivileged_unconfined=0
sudo sysctl -w kernel.apparmor_restrict_unprivileged_userns=0
``` -->
