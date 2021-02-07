#!/usr/bin/env bash

print_date(){
    date "+%H:%M:%S"
    case $BLOCK_BUTTON in
        1) handler_1
    esac
}

handler_1(){
    let X=$(($BLOCK_X-220)) 
    let Y=$(($BLOCK_Y-275)) 
    yad --no-buttons   --geometry=10x10+$X+$Y  --calendar &>/dev/null &
    sleep 5
    killall yad  
}
print_date