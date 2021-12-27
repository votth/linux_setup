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
alias sudo='sudo '
alias poof='sudo shutdown -h now'
alias roll='sudo pacman -Syu'
alias nuke='pacman -Rsn $(pacman -Qdtq)'

# Funzy scripts
alias snow='xsnow -snowflakes 650 -notrees -nosanta -norudolf -ssnowdepth 100 -yspeed 15 -nowind & disown'
alias shellsnow='python3 ~/Documents/github/linux_setup/scripts/snowjob.py'

# Fixing problem with SSH-ing
alias ssh="TERM=xterm-256color ssh"

# Color coded
alias grep='grep --color=auto'
alias ip='ip -color=auto'
alias ls='ls --color=auto'

export LESS='-R --use-color -Dd+r$Du+b'
export MANPAGER='less -R --use-color -Dd+r -Du+b'

