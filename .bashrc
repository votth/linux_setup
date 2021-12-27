#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Misc.
alias testmic='arecord -d 5 test-mic.wav && echo -e "\nUse aplay test-mic.wav to hear the record"'
alias quickmic='arecord -vvv -f dat /dev/null && rm test-mic.wav'
alias open='xdg-open $1'
alias copy='xclip -sel clip'
alias batstat='cat /sys/class/power_supply/BAT0/status /sys/class/power_supply/BAT0/capacity'

# Navigation
alias la='ls -al'
alias cdgit='cd $(git root)'	# return to git's root dir

# Applications related
alias vimb='vimb --no-maximize'
alias vncviewer='vncviewer & disown'
alias matlab='env MESA_LOADER_DRIVER_OVERRIDE=i965 matlab -desktop'

# Lazy pacman
alias poof='sudo shutdown -h now'
alias roll='sudo pacman -Syu'
alias nuke='pacman -Rsn $(pacman -Qdtq)'

# Funzy scripts
alias snow='xsnow -snowflakes 650 -notrees -nosanta -norudolf -ssnowdepth 100 -yspeed 15 -nowind & disown'
alias shellsnow='python3 ~/Documents/github/linux_setup_scripts/snowjob.py'

#fixing problem with SSH-ing
alias ssh="TERM=xterm-256color ssh"

# Color coded
alias grep='grep --color=auto'
alias ip='ip -color=auto'
alias ls='ls --color=auto'

export LESS='-R --use-color -Dd+r$Du+b'
export MANPAGER='less -R --use-color -Dd+r -Du+b'

# ???
export EDITOR=vim
export VISUAL=vim

### Prompt color
# PS1='[\u@\h \W]\$ '
# Sample: \[033[x;xxm\]somethingrandom everything after m] will be that x;xx color
# PS1="\[\033[1;32m\][\[\033[0m\]\u@\h \[\033[1;32m\]\W]\\$\[\033[0m\] "
source $HOME/.git-prompt.sh
GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWUNTRACKEDFILES=1
GIT_PS1_SHOWUPSTREAM="auto"

# Backup
# No backgroup colors
#export PS1="\[\033[1;32m\][\u@\h \[\033[1;37m\]\W\[\033[1;32m\]]\[\033[0;33m\]\$(__git_ps1 ' %s ')\[\033[1;32m\]\$\[\033[0m\] "
# Background color with u@h info
#export PS1="\[\033[1;32m\]\[\033[40m\][\u@\h \[\033[1;37m\]\[\033[42m\] \W\[\033[1;32m\]]\[\033[0;30m\]\[\033[43m\]\$(__git_ps1 ' %s ')\[\033[1;32m\]\[\033[40m\]\$\[\033[0m\] "
# Background color without u@h
export PS1="\[\033[1;37m\]\[\033[42m\] \W \[\033[1;32m\]\[\033[0;30m\]\[\033[43m\]\$(__git_ps1 ' %s ')\[\033[1;32m\]\[\033[40m\] \$ \[\033[0m\]"

LFCD="$GOPATH/src/github.com/gokcehan/lf/etc/lfcd.sh"  # source
LFCD="/path/to/lfcd.sh"                                #  pre-built binary, make sure to use absolute path
if [ -f "$LFCD" ]; then
    source "$LFCD"
fi
