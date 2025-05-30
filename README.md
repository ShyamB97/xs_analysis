## First time installtion
```
source setup_install_tools.sh
install
container shell # start an apptainer shell
source env.sh
mkdir work # make a work directory area that is not tracked by git
```

## Each time you login
```
source setup_install_tools.sh # add container script to path
container shell # start an apptainer shell
source env.sh
```

## Development
- Make sure any files you generate are kept in a directory called `work`.

- Changes to the software can be made and you can push them to their respective repos.

## Caveats/To Do's
- Branches and versions will change, in particular, protoduneana will be updated, requiring new dependencies on dunesw that cannot be retroactively applied. So setup of the area after push may not work and will require a fresh install (may segment the installation process for this reason). 
- Figure out a mechanism to get the correct version of the protoduneana repo to ensure FTI works without intervention. 