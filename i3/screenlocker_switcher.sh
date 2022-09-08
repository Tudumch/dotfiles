
#!/bin/bash

# Скрипт переключает значение переменной, которую проверяет 
# ~/.config/i3/i3lockscript.sh, перед тем как залочить экран

# -------------------------------------

# Проверяет существует ли файл с переменной LOCKER_ON. Если нет - создаёт его.
if [[ -e ~/.screenlocker_var ]]
then
    source ~/.screenlocker_var
else
    touch ~/.screenlocker_var
    echo -e "SCREENLOCKER=1" > ~/.screenlocker_var
    source ~/.screenlocker_var
fi

# Переключает значение SCREENLOCKER в зависимости от передеанного аргумента
if [[ $1 == off ]]
then
    echo -e "SCREENLOCKER=0" > ~/.screenlocker_var
else
    echo -e "SCREENLOCKER=1" > ~/.screenlocker_var
fi

