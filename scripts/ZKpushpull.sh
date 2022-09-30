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
seporator="--------------------------------------"

# ТЕЛО

# Проверяет существует ли файл с переменной ZKpath. Если нет - создаёт его.
if [[ -e ~/.ZKpath_var ]]
then
    source ~/.ZKpath_var
else
    touch ~/.ZKpath_var
    echo Enter full path to Zettelkasten folder:
    read USER_INPUT 
    echo -e "ZKpath=$USER_INPUT" > ~/.ZKpath_var
    source ~/.ZKpath_var
fi

# Тело скрипта
cd $ZKpath

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

