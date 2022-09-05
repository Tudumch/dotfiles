#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='\[\033[1;36m\]\u\[\033[1;31m\]@\[\033[1;32m\]\h:\[\033[1;35m\]\w\[\033[1;31m\]\$\[\033[0m\] '

force_color_promt=yes

# MY ALIASES
# Path-related aliases
alias CFpull='~/linux_configs/arch/ConfigSync.sh get'
alias CFpush='~/linux_configs/arch/ConfigSync.sh send'

alias ZKpull='~/linux_configs/arch/ZKpushpull.sh pull'
alias ZKpush='~/linux_configs/arch/ZKpushpull.sh push'

alias update='~/linux_configs/arch/SysUpdateChecker.sh'

alias lockoff='mv ~/linux_configs/arch/configs/i3/i3lockscript.sh ~/linux_configs/arch/configs/i3/i3lockscript.sh1'
alias lockon='mv ~/linux_configs/arch/configs/i3/i3lockscript.sh1 ~/linux_configs/arch/configs/i3/i3lockscript.sh'

alias shutdownscript='~/linux_configs/arch/ShutDownScript.sh'

# Universal aliases
alias shutdown='shutdown now'
alias emacst='emacs -nw'
alias emacs='emacs'
alias vim='nvim'
alias bluetooth='blueman-manager'
alias startfast='obsidian & firefox &'

alias pull='CFpull; ZKpull'
alias push='CFpush; ZKpush'
alias off='shutdownscript; shutdown'
alias reb='push; reboot'

# Specific aliases
alias steam='flatpak run com.valvesoftware.Steam'

source ~/linux_configs/arch/SysUpdateChecker.sh
source /etc/profile.d/vte.sh

