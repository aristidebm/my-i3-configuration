#!/usr/bin/env bash

home(){
    echo "$USER"

    case $BLOCK_BUTTON in
        1) i3-msg -q exec nemo ~ &>/dev/null &
    esac
}

home

