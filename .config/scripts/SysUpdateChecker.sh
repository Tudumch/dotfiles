#!/bin/bash

# Проверяет обновлялась ли система в этом месяце.
# Если нет - предлагает обновить.

# -------------------------------------

# ПЕРЕМЕННЫЕ
currMounth=`date +%m`

# Проверяет существует ли файл с месяцем предыдущего обновления
if [[ -e ~/.SysUpdateCheck_VARs ]]
then
    source ~/.SysUpdateCheck_VARs
else
    touch ~/.SysUpdateCheck_VARs
    echo -e "LAST_UPDATE=`date +%m`\n" > ~/.SysUpdateCheck_VARs
    source ~/.SysUpdateCheck_VARs
fi

# Проверяет обновлялась ли система в этом месяце. Если нет - запрашивает обновление
if [[ ${LAST_UPDATE#0} -lt ${currMounth#0} ]] || [[ ${LAST_UPDATE#0} -eq 12 && ${currMounth#0} -lt 12 ]]
then
    echo It\'s time to update your system! Procied? \(y/n\):
    read answerVAR

    # Считывает ответ пользователя на запрос обновления
    if [[ $answerVAR == "y" ]]
    then
    echo
	echo -e "\033[33mUpdating...\033[0m"
    echo
    sudo pacman -Sy archlinux-keyring --noconfirm
	sudo pacman -Syu --noconfirm
    if [ $? -ne 0 ]
    then
      echo
      echo -e "\033[91mAn error has occured in update process! Please update your system manually!\033[0m"

      read
      exit 1
    fi

	echo -e "LAST_UPDATE=`date +%m`\n" > ~/.SysUpdateCheck_VARs
    echo
	echo -e "\033[32mUpdates successfully installed! Press ENTER to continue...\033[0m"
    read
	clear
    else
	echo Well, next time then..
	sleep 1
	clear
    fi
fi

