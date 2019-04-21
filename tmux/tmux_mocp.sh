#!/bin/bash

# ----------------CopyRight----------------
# Name:             tmux_mocp
# Version:          1.0.0
# Language:         bash shell
# Date:             2018-12-12 week3 14:33:18
# Author:           Ewen Lai
# E-mail:           lwwen1107@qq.com
# ---------------Environment---------------
# Manjaro
# GNU Bash
# -----------------------------------------

type mocp > /dev/null 2>&1 || exit 1
mocp -Q %state > /dev/null 2>&1
if [ $? = 0 ]; then
    musicpath=`mocp -Q %file`
    musicfile=${musicpath##*/}
    musicname=${musicfile%.*}
    if [ `mocp -Q %state` = 'PLAY' ]; then
        flag='♫';
    else
        flag='||';
    fi
    echo ${flag} ${musicname};
fi
