#!/bin/bash

# This script cleans up system cache

# HOME cache
rm -rf ~/.cache/**

# VIFM trash
rm -rf ~/.local/share/vifm/Trash/**

# Arch pacman cache
sudo pacman -Qtdq | sudo pacman -Rns -
sudo pacman -Qqd | sudo pacman -Rsu --print -
sudo pacman -Sc --noconfirm

echo
echo "System cleanup done!"

