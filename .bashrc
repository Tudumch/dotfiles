#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='\[\033[1;36m\]\u\[\033[1;31m\]@\[\033[1;32m\]\h:\[\033[1;35m\]\w\[\033[1;31m\]\$\[\033[0m\] '

force_color_promt=yes


# ----------------------------------------------------------------------
# MY ALIASES
# ----------------------------------------------------------------------

# Path-related aliases

alias ZKpull='~/linux_configs/arch/ZKpushpull.sh pull'
alias ZKpush='~/linux_configs/arch/ZKpushpull.sh push'

alias update='~/linux_configs/arch/SysUpdateChecker.sh'

# Universal aliases
alias shutdown='shutdown now'
alias v='nvim'
alias f='vifm'
alias bluetooth='blueman-manager'

alias pull='~/linux_configs/arch/StartupScript.sh'
alias push='~/linux_configs/arch/ShutDownScript.sh'
alias off='push; shutdown'
alias reb='push; reboot'

alias lockoff='~/.config/i3/screenlocker_switcher.sh off'
alias lockon='~/.config/i3/screenlocker_switcher.sh'

alias pv='source ./venv/bin/activate' # активация venv для Python-проекта

# Specific aliases
alias steam='flatpak run com.valvesoftware.Steam'

source ~/linux_configs/arch/SysUpdateChecker.sh
source ~/.config/i3/screenlocker_var
source /etc/profile.d/vte.sh

