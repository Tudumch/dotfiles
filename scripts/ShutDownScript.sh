#!/bin/bash

# Скрипт, выполняющийся при выключении машины через алиас off
# В основном запускает другие скрипты

# Включаем автоматическую блокировку экрана, если вдруг она была выключена
~/.config/i3/screenlocker_switcher.sh

# Комитим и пушим изменения в dot-файлах, если вдруг я забыл закомитить их вручную
cd ~/dotfiles
git add .
git commit -m "AUTOSYNC (means I forgot to commit some changes manualy before turn off my PC)"
git push

# Синхронизируем хранилище инфы обсидиана
~/linux_configs/arch/ZKpushpull.sh push		
