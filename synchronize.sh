#!/bin/bash

# --------------------------------------------------
# This script makes simlinks for all files contained in this repo to your
# ~/.config folder
# --------------------------------------------------

# Get path to this script:
SCRIPT_ABSOLUTE_FILENAME=`readlink -e "$0"`
# Get path to parent dir of this script:
SCRIPT_PARENT_DIRECTORY=`dirname "$ABSOLUTE_FILENAME"`

# Copy all from script dir for make folder hierarchy:
cp -r $SCRIPT_PARENT_DIRECTORY/* ~/.config/


# --------------------------------------------------
# MAKING SYMLINKS
# --------------------------------------------------

# bashrc
ln $SCRIPT_PARENT_DIRECTORY/.bashrc ~/
source ~/.bashrc

# i3wm
ln $SCRIPT_PARENT_DIRECTORY/i3/config ~/.config/i3/
ln $SCRIPT_PARENT_DIRECTORY/i3/i3lockscript.sh ~/.config/i3/
ln $SCRIPT_PARENT_DIRECTORY/i3/overlay.png ~/.config/i3/

ln $SCRIPT_PARENT_DIRECTORY/i3status/config ~/.config/i3status/

# XFCE4-TERMINAL
ln $SCRIPT_PARENT_DIRECTORY/xfce4/terminal/terminalrc ~/.config/xfce4/terminal

# Midnight Commander
ln $SCRIPT_PARENT_DIRECTORY/mc/mc.ext ~/.config/mc/
ln $SCRIPT_PARENT_DIRECTORY/mc/mc.keymap ~/.config/mc/

# Image Viewer Geeqie
ln $SCRIPT_PARENT_DIRECTORY/geeqie/default_window_layout.xml ~/.config/geeqie/
ln $SCRIPT_PARENT_DIRECTORY/geeqie/geeqierc.xml ~/.config/geeqie/

# VIM 
ln $SCRIPT_PARENT_DIRECTORY/.vimrc ~/

# NEOVIM
ln $SCRIPT_PARENT_DIRECTORY/nvim/init.lua ~/.config/nvim/
ln $SCRIPT_PARENT_DIRECTORY/nvim/lua/keymaps.lua ~/.config/nvim/lua/
ln $SCRIPT_PARENT_DIRECTORY/nvim/lua/plugins.lua ~/.config/nvim/lua/
ln $SCRIPT_PARENT_DIRECTORY/nvim/lua/settings.lua ~/.config/nvim/lua/

# VIFM (filemanager)
ln $SCRIPT_PARENT_DIRECTORY/vifm/vifmrc ~/.config/vifm/
ln $SCRIPT_PARENT_DIRECTORY/vifm/colors/palenight.vifm ~/.config/vifm/colors/


# --------------------------------------------------
# CLEAN UP
# --------------------------------------------------
rm ~/.config/install.sh
rm ~/.config/synchronize.sh
