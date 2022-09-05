#!/bin/bash

# --------------------------------------------------
# This script makes simlinks for all files contained in this repo to your
# ~/.config folder
# --------------------------------------------------

# Get path to this script:
SCRIPT_ABSOLUTE_FILENAME=`readlink -e "$0"`
# Get path to parent dir of this script:
SCRIPT_PARENT_DIRECTORY=`dirname "$ABSOLUTE_FILENAME"`

# ----------------------------------------------------------------------------- 
# Install
# ----------------------------------------------------------------------------- 

sudo pacman -S ttf-font-awesome --noconfirm # font for icons in i3-statusbar
 
# vim plugin-manager VIM-PLUG
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# NEOVIM
sudo pacman -S neovim --noconfirm
sudo pacman -S xclip --noconfirm # for work with system clipboard
sudo pacman -S ctags --noconfirm # for nvim tagbar-plugin
git clone --depth 1 https://github.com/wbthomason/packer.nvim\ ~/.local/share/nvim/site/pack/packer/start/packer.nvim  # nvim plugin-manager Packer

# VIFM (filemanager)
sudo pacman -S vifm --noconfirm

# Image Viewer Geeqie
sudo pacman -S geeqie --noconfirm

# ----------------------------------------------------------------------------- 
# DOTFILES SYNC
# ----------------------------------------------------------------------------- 
$SCRIPT_PARENT_DIRECTORY/synchronize.sh
