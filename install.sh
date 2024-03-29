#!/bin/bash

# --------------------------------------------------
# This script makes simlinks for all files contained in this repo to your
# ~/.config folder
# --------------------------------------------------

# Get path to this script:
SCRIPT_ABSOLUTE_FILENAME=`readlink -e "$0"`
# Get path to parent dir of this script:
SCRIPT_PARENT_DIRECTORY=`dirname "$SCRIPT_ABSOLUTE_FILENAME"`

source $SCRIPT_PARENT_DIRECTORY/TDMCH_bashlib.sh # my bash-library

# ----------------------------------------------------------------------------- 
# Install
# ----------------------------------------------------------------------------- 
echo
echo
printColorText orange "WARNING! This script will REPLACE your dotfiles in home directory!"

if [[ $1 == full ]]
then
    printColorText orange ".bashrc and .xsession will be replaced too!"
fi

echo
printColorText blue "If you agree - press ENTER, if no - press CTRL+C..."
read

sudo pacman -Sy

sudo pacman -S ttf-font-awesome --noconfirm # font for icons in i3-statusbar
sudo pacman -S redshift --noconfirm # auto nightmode for screen
sudo pacman -S btop --noconfirm # process-manager

# awesomeWM stuff
sudo pacman -S xorg-xbacklight i3lock xautolock acpi scrot imagemagick --noconfirm
sudo pacman -S rxvt-unicode --noconfirm
 
# vim plugin-manager VIM-PLUG
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# NEOVIM
sudo pacman -S neovim --noconfirm
sudo pacman -S xclip --noconfirm # for work with system clipboard
sudo pacman -S ctags --noconfirm # for nvim tagbar-plugin
sudo pacman -S ripgrep --noconfirm # for search in Telescope-plugin
sudo pacman -S pyright --noconfirm # for python autocomplition
yay -S cmp-nvim-lsp --noconfirm
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim  # nvim plugin-manager Packer

# Python
python -m venv ~/.python/path/to/virtualenvs/debugpy # python debug
~/.python/path/to/virtualenvs/debugpy/bin/python -m pip3 install debugpy # python debug

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

echo
printColorText green "Dotfiles installation and synchronization finished!"
printColorText green "Reboot system to apply changes."
