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
cp $SCRIPT_PARENT_DIRECTORY/* ~/.config/


# --------------------------------------------------
# MAKING SYMLINKS
# --------------------------------------------------

# i3wm
ln $SCRIPT_PARENT_DIRECTORY/i3/config ~/.config/i3/
ln $SCRIPT_PARENT_DIRECTORY/i3/i3lockscript.sh ~/.config/i3/
ln $SCRIPT_PARENT_DIRECTORY/i3/overlay.png ~/.config/i3/

sudo pacman -S ttf-font-awesome --noconfirm # awesome-font for icons in i3-statusbar
ln $SCRIPT_PARENT_DIRECTORY/i3status/config ~/.config/i3status/

# XFCE4-TERMINAL
ln $SCRIPT_PARENT_DIRECTORY/xfce4/terminal/terminalrc ~/.config/xfce4/terminal

# Midnight Commander
ln $SCRIPT_PARENT_DIRECTORY/mc/mc.ext ~/.config/mc/
ln $SCRIPT_PARENT_DIRECTORY/mc/mc.keymap ~/.config/mc/

# Image Viewer Geeqie
ln $SCRIPT_PARENT_DIRECTORY/geeqie/default_window_layout.xml ~/.config/geekie/
ln $SCRIPT_PARENT_DIRECTORY/geeqie/geekierc.xml ~/.config/geekie/

# vim plugin-manager VIM-PLUG
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
ln $SCRIPT_PARENT_DIRECTORY/.vimrc ~/

# NEOVIM
sudo pacman -S neovim --noconfirm
sudo pacman -S xclip --noconfirm # for work with system clipboard
sudo pacman -S ctags --noconfirm # for nvim tagbar-plugin
git clone --depth 1 https://github.com/wbthomason/packer.nvim\ ~/.local/share/nvim/site/pack/packer/start/packer.nvim  # nvim plugin-manager Packer
ln $SCRIPT_PARENT_DIRECTORY/nvim/init.lua ~/.cofig/nvim/
ln $SCRIPT_PARENT_DIRECTORY/nvim/lua/keymaps.lua ~/.cofig/nvim/lua/
ln $SCRIPT_PARENT_DIRECTORY/nvim/lua/plugins.lua ~/.cofig/nvim/lua/
ln $SCRIPT_PARENT_DIRECTORY/nvim/lua/settings.lua ~/.cofig/nvim/lua/

# VIFM (filemanager)
sudo pacman -S vifm --noconfirm
cp $SCRIPT_PARENT_DIRECTORY/vifm ~/.config/
ln $SCRIPT_PARENT_DIRECTORY/vifm/vimrc ~/.config/vifm/
ln $SCRIPT_PARENT_DIRECTORY/vifm/colors/palenight.vifm ~/.config/vifm/colors/
