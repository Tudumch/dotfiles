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
echo
echo
echo WARNING! This script will REPLACE your dotfiles in home directory!

if [[ $1 == full ]]
then
    echo .bashrc and .xsession will be replaced too!
fi

echo
echo If you agree - press any key, if no - press CTRL+C
read

sudo pacman -Sy

sudo pacman -S ttf-font-awesome --noconfirm # font for icons in i3-statusbar
 
# vim plugin-manager VIM-PLUG
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# NEOVIM
sudo pacman -S neovim --noconfirm
sudo pacman -S xclip --noconfirm # for work with system clipboard
sudo pacman -S ctags --noconfirm # for nvim tagbar-plugin
sudo pacman -S ripgrep --noconfirm # for search in Telescope-plugin
sudo pacman -S pyright --noconfirm # for python autocomplition
python -m venv path/to/virtualenvs/debugpy # python debug
path/to/virtualenvs/debugpy/bin/python -m pip3 install debugpy # python debug
git clone --depth 1 https://github.com/wbthomason/packer.nvim\ ~/.local/share/nvim/site/pack/packer/start/packer.nvim  # nvim plugin-manager Packer

# VIFM (filemanager)
sudo pacman -S vifm --noconfirm
sudo pacman -S ueberzug --noconfirm # for image-priviews
sudo pacman -S ffmpegthumbnailer --noconfirm # for video-priviews

# Image Viewer Geeqie
sudo pacman -S geeqie --noconfirm

# ----------------------------------------------------------------------------- 
# DOTFILES SYNC
# ----------------------------------------------------------------------------- 

if [[ $1 == full ]]
then
    $SCRIPT_PARENT_DIRECTORY/synchronize.sh full
else
    $SCRIPT_PARENT_DIRECTORY/synchronize.sh
fi
