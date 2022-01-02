#!/bin/bash

cp -avr -t . ~/.xinitrc ~/.git* ~/.bashrc ~/.bash_aliases ~/.vimrc ~/.vim/after/ ~/.vim/colors/ ~/.config/alacritty/ ~/.config/awesome/autorun.sh ~/.config/awesome/rc.lua ~/.config/lf/ ~/.config/picom/ ~/.config/vimb/config ~/.config/vim/ ~/testPackages

# while IFS= read -r line; do
#     cp -avr -t . $line
#     # echo $line
# done < txt/trackedFiles.txt

# for path in txt/trackedFiles.txt; do
#     cp -avr $path .
# done

mv config .config/vimb/
mv -t .config/awesome/ autorun.sh rc.lua
echo '------------------------------------'
cp -avr -t .config/ alacritty/ lf/ picom/ vim/
cp -avr -t .vim/ colors/ after/
rm -rf alacritty lf picom colors after vim

pacman -Qq > ./txt/installedPackages.txt
echo '------------------------------------' && git st

# ## Push the update
# git add .
# git commit -m "Autoupdate"
# git push
