#!/bin/bash

# Скрипт пушит и пулит репозиторий зеттелькастена в зависимости от
# переданных в него параметров.

# Список передаваемых аргументов:
# -push - пушим в удаленный репозиторий
# -pull - затягиваем все изменения с удаленного репозитория

# --------------------------------------------------------------
# ПЕРЕМЕННЫЕ
currentFLDR=`pwd`                         # Получаем текущую дерикторию
machineName=`uname -n`
zettelkastenFLDR=~/zettelkasten
seporator="--------------------------------------"

# ТЕЛО
cd $zettelkastenFLDR

if [[ $1 == pull ]]
then
    echo $seporator
    echo Pulling from Zettelkasten repo...
    git pull
    echo $seporator
fi

if [[ $1 == push ]]
then
    echo $seporator
    echo Pushing to Zettelkasten repo...
    git add .
    git commit -am "Arch: autosync."
    git push
    echo $seporator
fi

cd $currentFLDR

