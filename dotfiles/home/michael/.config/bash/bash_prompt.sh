#!/usr/bin/env bash
# -*- coding: UTF-8 -*-
###############################################################################
# bash_prompt.sh
# ==============
#
# Version:               1.0.0
# Author:                Michael De Pasquale
# Creation Date:         2018-01-25
# License:               None
#
# Description
# -----------
# Customised bash prompt. Displays exit code, user/host names, path and git
# branch. Requires a terminal with truecolor support.
#
###############################################################################

# Sync command history and update prompt
export PROMPT_COMMAND='history -a; history -n;_update_ps1 '

function ft_color {
    PS1+="$(printf "\[\x1b[38;2;$1;$2;$3m\]")"
}
function bg_color {
    PS1+="$(printf "\[\x1b[48;2;$1;$2;$3m\]")"
}
function ft_style_clear {
    PS1+="$(printf "\[\x1b[0m\]")"
}
function ft_style_b {
    PS1+="$(printf "\[\x1b[1m\]")"
}
function ft_style_b_clear {
    PS1+="$(printf "\[\x1b[22m\]")"
}
function ft_style_u {
    PS1+="$(printf "\[\x1b[4m\]")"
}
function ft_style_u_clear {
    PS1+="$(printf "\[\x1b[24m\]")"
}
function ft_style_inv {
    PS1+="$(printf "\[\x1b[7m\]")"
}
function ft_style_inv_clear {
    PS1+="$(printf "\[\x1b[27m\]")"
}
function ft_style_strike {
    PS1+="$(printf "\[\x1b[9m\]")"
}
function ft_style_strike_clear {
    PS1+="$(printf "\[\x1b[29m\]")"
}
function ul_color() {
    PS1+="$(printf "\[\x1b[58;2;$1;$2;$3m\]")"
}
function ul_color_clear {
    PS1+="$(printf "\[\x1b[24m\]")"
}
function ul_clear {
    PS1+="$(printf "\[\x1b[4:0m\]")"
}
function ul_style_line {
    PS1+="$(printf "\[\x1b[4:1m\]")"
}
function ul_style_dline {
    PS1+="$(printf "\[\x1b[4:2m\]")"
}
function ul_style_curly {
    PS1+="$(printf "\[\x1b[4:3m\]")"
}
function ul_style_line2 {
    PS1+="$(printf "\[\x1b[4m\]")"
}
function ul_style_clear {
    PS1+="$(printf "\[\x1b[24m\]")"
}
function nextseg {
    PS1+=""
}
function _update_ps1() {
    local ERROR="$1"
    PS1=''

    # Colors
    S0FR=48; S0FG=60; S0FB=66;
    S1FR=167; S1FG=177; S1FB=182; S1BR=68; S1BG=68; S1BB=68
    S2FR=207; S2FG=216; S2FB=220; S2BR=88; S2BG=88; S2BB=88
    S3FR=163; S3FG=173; S3FB=179; S3BR=68; S3BG=68; S3BB=68
    S4FR=253; S4FG=246; S4FB=227; S4BR=0; S4BG=135; S4BB=175;
    S5FR=$S2FR; S5FG=$S2FG; S5FB=$S2FB; S5BR=$S2BR; S5BG=$S2BG; S5BB=$S2BB
    S6FR=54; S6FG=64; S6FB=70; S6BR=255; S6BG=193; S6BB=7

    # Return code
    ft_color $S0FR $S0FG $S0FB; ft_style_b
    PS1+='$(_ERR=$?; [[ "$_ERR" != "0" ]] && (printf "\[\x1b[48;2;255;87;34m\]%-2s" "$_ERR" && printf "\[\x1b[38;2;255;87;34m\]") || (printf "\[\x1b[48;2;175;215;135m\]  " && printf "\[\x1b[38;2;175;215;135m\]"))'
    bg_color $S2BR $S2BG $S2BB;
    nextseg;

    # Username
    ft_style_clear; ft_color $S2FR $S2FG $S2FB; bg_color $S2BR $S2BG $S2BB;
    PS1+=' $USER '; ft_color $S2BR $S2BG $S2BB; bg_color $S3BR $S3BG $S3BB;
    nextseg; ft_style_clear

    # Hostname
    ft_color $S3FR $S3FG $S3FB; bg_color $S3BR $S3BG $S3BB;
    PS1+=" $(hostname) "; ft_color $S3BR $S3BG $S3BB;

    # Current directory
    bg_color $S4BR $S4BG $S4BB; nextseg; ft_style_clear;
    ft_color $S4FR $S4FG $S4FB; bg_color $S4BR $S4BG $S4BB;

    if printf "$(pwd)" | grep "^/home/$USER" > /dev/null; then
        PS1+='  '; ft_color $S4BR $S4BG $S4BB;
    else
       PS1+='  ';
    fi

    local CURPATH=$(pwd | sed -r "s/\/home\/$USER\/?/ /; s/^\s*//g")
    [[ "${CURPATH:0:1}" == "/" ]] && local CURPATH="${CURPATH:1}"

    if [[ "$CURPATH" != '' ]]; then
        ft_color $S4BR $S4BG $S4BB; bg_color $S5BR $S5BG $S5BB; nextseg;
        ft_style_clear; ft_color $S5FR $S5FG $S5FB; bg_color $S5BR $S5BG $S5BB;
        PS1+=" $(printf "$CURPATH" | sed 's/\//  /g') "
        ft_style_clear; ft_color $S5BR $S5BG $S5BB;
    else
        ft_style_clear; ft_color $S4BR $S4BG $S4BB;
    fi

    # Git branch
    GITINFO=$(git status -sb 2> /dev/null)
    GIT_BRANCH=$(printf "$GITINFO" | grep -Po "(?<=## )\w+")
    #TODO - parse git status -sb

    if [[ "$GIT_BRANCH" != "" ]]; then
        bg_color $S6BR $S6BG $S6BB; nextseg; ft_style_clear;
        ft_color $S6FR $S6FG $S6FB; bg_color $S6BR $S6BG $S6BB;
        PS1+="  $GIT_BRANCH "; ft_style_clear; ft_color $S6BR $S6BG $S6BB
    fi

    # Done
    nextseg; PS1+='\n'; ft_style_clear; ft_color $S6BR $S6BG $S6BB; PS1+=''
    ft_style_clear;
}

return 0
