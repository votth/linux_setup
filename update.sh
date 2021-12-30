#!/bin/bash

cat txt/trackedFiles.txt | xargs cp -avr -t .

mv config .config/vimb/
mv -t .config/awesome/ autorun.sh rc.lua
echo '------------------------------------'
cp -avr -t .config/ alacritty/ lf/ picom/ vim/
cp -avr -t .vim/ colors/ after/
rm -rf alacritty lf picom colors after vim

pacman -Qq > installedPackages.txt
echo '------------------------------------' && git st

### Push the update
#git add .
#git commit -m "Autoupdate"
#
#git push
