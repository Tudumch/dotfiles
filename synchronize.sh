#!/bin/bash

# --------------------------------------------------
# This script makes simlinks for all files contained in this repo to your
# ~/.config folder
# --------------------------------------------------

# Get path to this script:
SCRIPT_ABSOLUTE_FILENAME=`readlink -e "$0"`
# Get path to parent dir of this script:
SCRIPT_PARENT_DIRECTORY=`dirname "$SCRIPT_ABSOLUTE_FILENAME"`

# Copy all from script dir for make folder hierarchy:
cp -r $SCRIPT_PARENT_DIRECTORY/.config/* ~/.config/

source $SCRIPT_PARENT_DIRECTORY/TDMCH_bashlib.sh # my bash-library


# --------------------------------------------------
# MAKING SYMLINKS
# --------------------------------------------------

if [[ $1 == full ]]
then
    # BASHRC
    ln -f $SCRIPT_PARENT_DIRECTORY/.config/.bashrc ~/
    source ~/.bashrc

    # XSESSION FILE
    ln -f $SCRIPT_PARENT_DIRECTORY/.config/.xsession ~/
    if [ $? -ne 0 ]
    then
      printColorText red "ERROR: .xsession file hasn't been symlinked!"
      printColorText red "Press ENTER to continue or CTRL+C to abort synchronization..."
      read
    fi
fi

# i3wm
# ln -f $SCRIPT_PARENT_DIRECTORY/.config/i3/config ~/.config/i3/
# ln -f $SCRIPT_PARENT_DIRECTORY/.config/i3status/config ~/.config/i3status/

# awesomeWM
ln -f $SCRIPT_PARENT_DIRECTORY/.config/awesome/rc.lua ~/.config/awesome/rc.lua
ln -f $SCRIPT_PARENT_DIRECTORY/.config/awesome/themes/zenfreeze/theme.lua ~/.config/awesome/themes/zenfreeze/theme.lua
git clone https://github.com/streetturtle/awesome-wm-widgets.git ~/.config/awesome/ # repo with widgets


# i3lock (screen locker)
ln -f $SCRIPT_PARENT_DIRECTORY/.config/i3lock/i3lockscript.sh ~/.config/i3lock/
ln -f $SCRIPT_PARENT_DIRECTORY/.config/i3lock/screenlocker_switcher.sh ~/.config/i3lock/
ln -f $SCRIPT_PARENT_DIRECTORY/.config/i3lock/overlay.png ~/.config/i3lock/
lockon # запускает алиас из bashrc чтобы создать переменную для i3lockscript.sh

# XFCE4-TERMINAL
ln -f $SCRIPT_PARENT_DIRECTORY/.config/xfce4/terminal/terminalrc ~/.config/xfce4/terminal

# rxvt-terminal
ln -f $SCRIPT_PARENT_DIRECTORY/.config/rxvt/config ~/.config/rxvt/
xrdb -merge ~/.config/rxvt/config # activate config


# vlc-player
ln -f $SCRIPT_PARENT_DIRECTORY/.config/vlc/vlc-qt-interface.conf ~/.config/vlc/
ln -f $SCRIPT_PARENT_DIRECTORY/.config/vlc/vlcrc ~/.config/vlc/

# Image Viewer Geeqie
ln -f $SCRIPT_PARENT_DIRECTORY/.config/geeqie/default_window_layout.xml ~/.config/geeqie/
ln -f $SCRIPT_PARENT_DIRECTORY/.config/geeqie/geeqierc.xml ~/.config/geeqie/

# VIM 
ln -f $SCRIPT_PARENT_DIRECTORY/.config/.vimrc ~/

# NEOVIM
ln -f $SCRIPT_PARENT_DIRECTORY/.config/nvim/init.lua ~/.config/nvim/
ln -f $SCRIPT_PARENT_DIRECTORY/.config/nvim/lua/keymaps.lua ~/.config/nvim/lua/
ln -f $SCRIPT_PARENT_DIRECTORY/.config/nvim/lua/plugins.lua ~/.config/nvim/lua/
ln -f $SCRIPT_PARENT_DIRECTORY/.config/nvim/lua/settings.lua ~/.config/nvim/lua/
ln -f $SCRIPT_PARENT_DIRECTORY/.config/nvim/lua/plugin_configs/cmp.lua ~/.config/nvim/lua/plugin_configs/
ln -f $SCRIPT_PARENT_DIRECTORY/.config/nvim/lua/plugin_configs/lsp.lua ~/.config/nvim/lua/plugin_configs/
ln -f $SCRIPT_PARENT_DIRECTORY/.config/nvim/lua/plugin_configs/dap.lua ~/.config/nvim/lua/plugin_configs/

# VIFM (filemanager)
ln -f $SCRIPT_PARENT_DIRECTORY/.config/vifm/vifmrc ~/.config/vifm/
ln -f $SCRIPT_PARENT_DIRECTORY/.config/vifm/vifmrun ~/.config/vifm/
ln -f $SCRIPT_PARENT_DIRECTORY/.config/vifm/vifmimg ~/.config/vifm/
ln -f $SCRIPT_PARENT_DIRECTORY/.config/vifm/colors/palenight.vifm ~/.config/vifm/colors/

# MY CUSTUM SCRIPTS
ln -f $SCRIPT_PARENT_DIRECTORY/.config/scripts/StartupScript.sh ~/.config/scripts/
ln -f $SCRIPT_PARENT_DIRECTORY/.config/scripts/ShutDownScript.sh ~/.config/scripts/
ln -f $SCRIPT_PARENT_DIRECTORY/.config/scripts/SysUpdateChecker.sh ~/.config/scripts/
ln -f $SCRIPT_PARENT_DIRECTORY/.config/scripts/ZKpushpull.sh ~/.config/scripts/
ln -f $SCRIPT_PARENT_DIRECTORY/.config/scripts/pushpull_dotfiles.sh ~/.config/scripts/


# --------------------------------------------------
# CLEAN UP
# --------------------------------------------------
echo 
echo Dotfiles synchronization finished!
