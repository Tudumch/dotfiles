#!/bin/bash

# Скрипт, выполняющийся при старте системы через конфиг-файл i3wm: ~/.config/i3/config
# В основном запускает другие скрипты


# Включаем автоматическую блокировку экрана, если вдруг она была выключена
~/.config/i3/screenlocker_switcher.sh

# Синхронизируем dotfiles-репозиторий чтобы синхронизировались конфиги
~/.config/scripts/pushpull_dotfiles.sh pull		

# Синхронизируем хранилище инфы обсидиана
~/.config/scripts/ZKpushpull.sh pull		
~/.config/scripts/ZKpushpull.sh push		

