alias brc='source ~/.bashrc'
alias ebrc='$EDITOR ~/.bashrc'
alias als='$EDITOR ~/.bash_aliases'

# Misc.
alias testmic='arecord -d 5 test-mic.wav && echo -e "\nUse aplay test-mic.wav to hear the record"'
alias quickmic='arecord -vvv -f dat /dev/null && rm test-mic.wav'
alias open='xdg-open'
alias batstat='cat /sys/class/power_supply/BAT0/status /sys/class/power_supply/BAT0/capacity'
#alias copy='xclip -sel clip'

# Navigation
alias la='ls -al'
alias tgr='cd $(git root)'	    # to git root
alias tg='cd ~/Documents/github/'   # to git

# Applications related
alias vb='vimb --no-maximize'
alias vncv='vncviewer & disown'
alias mlab='env MESA_LOADER_DRIVER_OVERRIDE=i965 matlab -desktop'
# go to vim's builtin plugins man, $1 is name of plugin, determined when `git clone`
alias vdoc='cd ~/.vim/pack/plugins/start/ && vim -u NONE -c "helptags $1/doc" -c q'

# Lazy pacman
alias roll='sudo pacman -Syu'
alias add='sudo pacman -S'
alias del='sudo pacman -Rs'

alias sudo='sudo '		    # to be able to use 'sudo' with aliases
alias nuke='pacman -Rsn $(pacman -Qdtq) 2>&1'
alias poof='sudo shutdown -h now'

# Funzy scripts
alias snow='xsnow -snowflakes 650 -notrees -nosanta -norudolf -ssnowdepth 100 -yspeed 15 -nowind & disown'
alias shsnow='python3 ~/Documents/github/linux_setup/scripts/snowjob.py'

# Fixing problem with SSH-ing when using alacritty
alias ssh="TERM=xterm-256color ssh"

# Color coded
alias grep='grep --color=auto'
alias ip='ip -color=auto'
alias ls='ls --color=auto'
alias tre='tree -C -L 2 | less'

export MANPAGER='less -R --use-color -Dd+r -Du+b'
export LESS='-R --use-color -Dd+r$Du+b'
