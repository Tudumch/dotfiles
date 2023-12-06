#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# ----------------------------------------------------------------------
# Color text in terminal and show git branch name
# ----------------------------------------------------------------------

parse_git_branch() {
 git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

alias ls='ls --color=auto'
PS1='\[\033[1;36m\]\h\[\033[1;31m\]@\[\033[1;32m\]\u:\[\033[1;35m\]\w\[\033[1;31m\033[96m$(parse_git_branch)\033[00m\033[1;31m\]\$\[\033[0m\] '


force_color_promt=yes


# ----------------------------------------------------------------------
# MY ALIASES
# ----------------------------------------------------------------------

# Path-related aliases
alias ZKpull='~/.config/scripts/ZKpushpull.sh pull'
alias ZKpush='~/.config/scripts/ZKpushpull.sh push'
alias update='~/.config/scripts/SysUpdateChecker.sh'

# Universal aliases
alias shutdown='shutdown now'
alias v='nvim'
alias f='~/.config/vifm/vifmrun'
alias bluetooth='blueman-manager'
alias chbash='v ~/.bashrc; source ~/.bashrc'

alias pull='~/.config/scripts/StartupScript.sh'
alias push='~/.config/scripts/ShutDownScript.sh'
alias off='push; shutdown'
alias reb='push; reboot'

alias lockoff='~/.config/i3/screenlocker_switcher.sh off'
alias lockon='~/.config/i3/screenlocker_switcher.sh'

alias pv='source ./venv/bin/activate' # активация venv для Python-проекта
alias pt='pv; python3 -m unittest discover' # запуск всех тестов в проекте 
alias pr='pv; pt; python3 main.py' # запуск main-модуля Python-проекта

# Specific aliases
alias steam='flatpak run com.valvesoftware.Steam'
alias yb='yandex-browser-stable'

source ~/.config/scripts/SysUpdateChecker.sh
source ~/.screenlocker_var
source /etc/profile.d/vte.sh

