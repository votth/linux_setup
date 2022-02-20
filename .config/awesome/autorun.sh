#!/usr/bin/env bash

function run {
    if ! pgrep -f $1 ;
    then
	$@&
    fi
}

run ~/Downloads/Discord/Discord
run spotify
run picom -b
# run firefox
