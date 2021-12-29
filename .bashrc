# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Aliases
if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi

# lfcd, stay on last-browsed dir
LFCD="$HOME/.config/lf/lfcd.sh"
if [ -f "$LFCD" ]; then
	source "$LFCD"
fi

# ???
export EDITOR=vim
export VISUAL=vim

# Show git state in prompt
source $HOME/.git-prompt.sh
GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWUNTRACKEDFILES=1
GIT_PS1_SHOWUPSTREAM="auto"

# Prompt color
# Sample: \[033[x;xxm\]somethingrandom everything after m] will be that x;xx color
# Background color without u@h
export PS1="\[\033[1;37m\]\[\033[42m\] \W \[\033[1;32m\]\[\033[0;30m\]\[\033[43m\]\$(__git_ps1 ' %s ')\[\033[1;32m\]\[\033[40m\] \$ \[\033[0m\]"

# No backgroud colors
#export PS1="\[\033[1;32m\][\u@\h \[\033[1;37m\]\W\[\033[1;32m\]]\[\033[0;33m\]\$(__git_ps1 ' %s ')\[\033[1;32m\]\$\[\033[0m\] "

# Background color with u@h info
#export PS1="\[\033[1;32m\]\[\033[40m\][\u@\h \[\033[1;37m\]\[\033[42m\] \W\[\033[1;32m\]]\[\033[0;30m\]\[\033[43m\]\$(__git_ps1 ' %s ')\[\033[1;32m\]\[\033[40m\]\$\[\033[0m\] "
