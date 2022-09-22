## About
This repository is a copy of the config files of my linux system that I use currently. I highly do not recommend blindly using it unless you know what that entails.

## Installation
"Installation" means creating symlinks of config files contained in this repository to your home directory.
WARNING: the installation-script will replace existing files in case of conflicts when copying, so I recommend making a backup first.

To install, just run the script `install.sh`, which is located at the root of this repository - it will automatically download all the packages necessary for correct operation and create symlinks to config files in your home directory.

For plugins in neo-vim, it is necessary to install them automatically from neo-vim itself by running the command `:PackerSync`.
