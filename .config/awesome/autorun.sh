#!/usr/bin/env bash

function run {
    if ! pgrep -f $1 ;
    then
	$@&
    fi
}

run ibus -drxR
run picom -b
run discord
run spotify
run firefox
