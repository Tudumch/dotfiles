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

if [[ $1 == full ]]
then
    # BASHRC
    ln -f $SCRIPT_PARENT_DIRECTORY/.bashrc ~/
    source ~/.bashrc

    # XSESSION FILE
    ln -f $SCRIPT_PARENT_DIRECTORY/.xsession ~/
fi

# i3wm
ln -f $SCRIPT_PARENT_DIRECTORY/i3/config ~/.config/i3/
ln -f $SCRIPT_PARENT_DIRECTORY/i3/i3lockscript.sh ~/.config/i3/
ln -f $SCRIPT_PARENT_DIRECTORY/i3/screenlocker_switcher.sh ~/.config/i3/
ln -f $SCRIPT_PARENT_DIRECTORY/i3/overlay.png ~/.config/i3/
lockon # запускает алиас из bashrc чтобы создать переменную для i3lockscript.sh

ln -f $SCRIPT_PARENT_DIRECTORY/i3status/config ~/.config/i3status/

# XFCE4-TERMINAL
ln -f $SCRIPT_PARENT_DIRECTORY/xfce4/terminal/terminalrc ~/.config/xfce4/terminal

# Midnight Commander
ln -f $SCRIPT_PARENT_DIRECTORY/mc/mc.ext ~/.config/mc/
ln -f $SCRIPT_PARENT_DIRECTORY/mc/mc.keymap ~/.config/mc/

# Image Viewer Geeqie
ln -f $SCRIPT_PARENT_DIRECTORY/geeqie/default_window_layout.xml ~/.config/geeqie/
ln -f $SCRIPT_PARENT_DIRECTORY/geeqie/geeqierc.xml ~/.config/geeqie/

# VIM 
ln -f $SCRIPT_PARENT_DIRECTORY/.vimrc ~/

# NEOVIM
ln -f $SCRIPT_PARENT_DIRECTORY/nvim/init.lua ~/.config/nvim/
ln -f $SCRIPT_PARENT_DIRECTORY/nvim/lua/keymaps.lua ~/.config/nvim/lua/
ln -f $SCRIPT_PARENT_DIRECTORY/nvim/lua/plugins.lua ~/.config/nvim/lua/
ln -f $SCRIPT_PARENT_DIRECTORY/nvim/lua/settings.lua ~/.config/nvim/lua/
ln -f $SCRIPT_PARENT_DIRECTORY/nvim/lua/plugin_configs/cmp.lua ~/.config/nvim/lua/plugin_configs/
ln -f $SCRIPT_PARENT_DIRECTORY/nvim/lua/plugin_configs/lsp.lua ~/.config/nvim/lua/plugin_configs/

# VIFM (filemanager)
ln -f $SCRIPT_PARENT_DIRECTORY/vifm/vifmrc ~/.config/vifm/
ln -f $SCRIPT_PARENT_DIRECTORY/vifm/colors/palenight.vifm ~/.config/vifm/colors/

# MY CUSTUM SCRIPTS
ln -f $SCRIPT_PARENT_DIRECTORY/scripts/StartupScript.sh ~/.config/scripts/
ln -f $SCRIPT_PARENT_DIRECTORY/scripts/ShutDownScript.sh ~/.config/scripts/
ln -f $SCRIPT_PARENT_DIRECTORY/scripts/SysUpdateChecker.sh ~/.config/scripts/
ln -f $SCRIPT_PARENT_DIRECTORY/scripts/ZKpushpull.sh ~/.config/scripts/
ln -f $SCRIPT_PARENT_DIRECTORY/scripts/pushpull_dotfiles.sh ~/.config/scripts/


# --------------------------------------------------
# CLEAN UP
# --------------------------------------------------
rm ~/.config/install.sh
rm ~/.config/synchronize.sh
echo 
echo Dotfiles synchronization finished!
