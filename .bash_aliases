# Quick access to commonly edited files
alias brc='source ~/.bashrc'
alias ebrc='$EDITOR ~/.bashrc'
alias als='$EDITOR ~/.bash_aliases'
#
alias vrc='$EDITOR ~/.vimrc'
alias vnasa='$EDITOR ~/.vim/colors/nasaKAT.vim'

# Navigation
alias la='ls -al'
alias tgr='cd $(git root)'	    # to git root
alias tg='cd ~/Documents/github/'   # to git
alias rjournal='cd ~/Documents/PTE/publish/R_Journal/'

# Applications related
alias vb='vimb --no-maximize'
alias vncv='vncviewer & disown'
# go to vim's builtin plugins man, $1 is name of plugin, determined when `git clone`
alias vdoc='cd ~/.vim/pack/plugins/start/ && vim -u NONE -c "helptags $1/doc" -c q'
alias vcf='cd ~/.config/vim/'
# File/Folder browser: netrw
alias lf='vim .'

# lazy pacman
alias roll='sudo pacman -Syu'
alias add='sudo pacman -S'
alias del='sudo pacman -Rs'

alias sudo='sudo '		    # to be able to use 'sudo' with aliases
alias nuke='pacman -Qdtq > ~/Documents/github/linux_setup/txt/nukePackages.txt && sudo pacman -Rs $(pacman -Qdtq)'
alias poof='sudo shutdown -h now'

# Misc.
alias testmic='arecord -d 5 test-mic.wav && echo -e "\nUse aplay test-mic.wav to hear the record"'
alias quickmic='arecord -vvv -f dat /dev/null && rm test-mic.wav'
alias open='xdg-open'
alias batstat='cat /sys/class/power_supply/BAT0/status /sys/class/power_supply/BAT0/capacity'
# Copy last used command
# https://apple.stackexchange.com/questions/110343/copy-last-command-in-terminal
alias cpLCMD='fc -ln -1 | awk '{$1=$1}1' | xclip -sel clipboard'

# Color coded
alias grep='grep --color=auto'
alias ip='ip -color=auto'
alias ls='ls --color=auto'
alias tre='tree -C -L 2 | less'

export MANPAGER='less -R --use-color -Dd+r -Du+b'
export LESS='-R --use-color -Dd+r$Du+b'

# Funzy scripts
alias snow='xsnow -snowflakes 650 -notrees -nosanta -norudolf -ssnowdepth 100 -yspeed 15 -nowind & disown'
alias trueCL='~/Documents/github/linux_setup/scripts/Colors_true.sh'
alias xtermCL='~/Documents/github/linux_setup/scripts/Colors_xterm.sh'
alias promptCL='~/Documents/github/linux_setup/scripts/Colors_prompt.sh'

# Fixing problem with SSH-ing when using alacritty
alias ssh="TERM=xterm-256color ssh"

