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
alias shutdownscript='~/linux_configs/arch/ShutDownScript.sh'

# Universal aliases
alias shutdown='shutdown now'
alias v='nvim'
alias f='vifm'
alias bluetooth='blueman-manager'

alias pull='~/linux_configs/arch/StartupScript.sh'
alias push='shutdownscript'
alias off='shutdownscript; shutdown'
alias reb='push; reboot'

alias lockoff='mv ~/.config/i3/i3lockscript.sh ~/.config/i3/i3lockscript.sh1'
alias lockon='mv ~/.config/i3/i3lockscript.sh1 ~/.config/i3/i3lockscript.sh'

# Specific aliases
alias steam='flatpak run com.valvesoftware.Steam'

source ~/linux_configs/arch/SysUpdateChecker.sh
source /etc/profile.d/vte.sh

