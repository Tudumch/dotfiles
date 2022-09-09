#!/bin/bash

# Скрипт, выполняющийся при старте системы через конфиг-файл i3wm: ~/.config/i3/config
# В основном запускает другие скрипты


# Включаем автоматическую блокировку экрана, если вдруг она была выключена
~/.config/i3/screenlocker_switcher.sh

# Синхронизируем dotfiles-репозиторий чтобы синхронизировались конфиги
cd ~/dotfiles
git pull origin main
~/dotfiles/synchronize.sh

# Синхронизируем хранилище инфы обсидиана
~/linux_configs/arch/ZKpushpull.sh pull		
