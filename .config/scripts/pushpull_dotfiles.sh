#!/bin/bash

# Вызывается из StartupScript.sh и ShutDownScript.sh
# Скрипт пушит и пулит dotfiles-репозиторий в зависимости от
# переданных в него аргументов.

# Список передаваемых аргументов:
# -push - пушим в удаленный репозиторий
# -pull - затягиваем все изменения с удаленного репозитория

# --------------------------------------------------------------
# ПЕРЕМЕННЫЕ
CURRENT_FOLDER=`pwd`                         # Получаем текущую дерикторию
DOTFILES_FOLDER=~/dotfiles
seporator="--------------------------------------"

# ТЕЛО
cd $DOTFILES_FOLDER

if [[ $1 == pull ]]
then
    echo $seporator
    echo Pulling from dotfiles repo...
    git pull
    echo $seporator
fi

if [[ $1 == push ]]
then
    echo $seporator
    echo Pushing to dotfiles repo...
    git add .
    git commit -am "AUTOSYNC (means I forgot to commit some changes manualy before turn off my PC)"
    git push

    if [ $? -ne 0 ]
    then
      echo "An error occurred when sending to a remote repository!"
      sleep 2
    fi

    echo $seporator
fi

cd $CURRENT_FOLDER

