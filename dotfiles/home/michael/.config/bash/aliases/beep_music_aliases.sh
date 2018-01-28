#!/bin/bash
# -*- coding: UTF-8 -*-
###############################################################################
# .bash_aliases_beeps                                                         
# =======                                                                     
#                                                                             
# Version:               1.0.0                                                
# Author:                Michael De Pasquale                                  
# Creation Date:         2017-12-07                                           
# License:               None                                                 
#                                                                             
# Description                                                                 
# -----------                                                                 
# Long beep aliases/functions that would clutter up .bash_aliases go here.    
#                                                                             
###############################################################################

function alert_success {
    if [ -z "$1" ]; then
        return 1
    fi

    echo "$1"
    alert "$1"
    beep_success
    return 0
}
function alert_failure {
    if [ -z "$1" ]; then
        echo "alert_failure: invalid number of arguments"
        echo "Usae: alert_success <string>"
        return 1
    fi

    echo "$1"
    alert "$1"
    beep_failure
}

function beep_alert_climb {
    for i in 100 150 200 250 300 350 400 450 500 550 600 650 700 750 800 850 900 950 1000 1050 1100 1150 1200 1250 1300 1350 1400 1450 1500 1550 1600 1650 1700 1750 1800 1850 1900 1950 2000 2050 2100 2150 2200 2250 2300 2350 2400 2450 2500 2550 2600; do 
        beep -l 10 -f $i; 
    done
}

function beep_alert_alarm {
    for n in 1 2 3 4 5 6 7 8 9 0; do 
        for f in 400 500 600 700 800 900 1000 1100 1200 1300 1400 1500 1600; do 
            beep -f $f -l 20 
        done
    done
}

function beep_alert_ring {
    for n in 1 2 3 ; do 
        for f in 1 2 1 2 1 2 1 2 1 2 ; do 
            beep -f ${f}000 -l 20 
        done 
    done
}

alias beep_song_axel_foley='beep -f 659 -l 460 -n -f 784 -l 340 -n -f 659 -l 230 -n -f 659 -l 110 -n -f 880 -l 230 -n -f 659 -l 230 -n -f 587 -l 230 -n -f 659 -l 460 -n -f 988 -l 340 -n -f 659 -l 230 -n -f 659 -l 110 -n -f 1047-l 230 -n -f 988 -l 230 -n -f 784 -l 230 -n -f 659 -l 230 -n -f 988 -l 230 -n -f 1318 -l 230 -n -f 659 -l 110 -n -f 587 -l 230 -n -f 587 -l 110 -n -f 494 -l 230 -n -f 740 -l 230 -n -f 659 -l 460'

alias beep_song_mario_victory='beep -f 130 -l 100 -n -f 262 -l 100 -n -f 330 -l 100 -n -f 392 -l 100 -n -f 523 -l 100 -n -f 660 -l 100 -n -f 784 -l 300 -n -f 660 -l 300 -n -f 146 -l 100 -n -f 262 -l 100 -n -f 311 -l 100 -n -f 415 -l 100 -n -f 523 -l 100 -n -f 622 -l 100 -n -f 831 -l 300 -n -f 622 -l 300 -n -f 155 -l 100 -n -f 294 -l 100 -n -f 349 -l 100 -n -f 466 -l 100 -n -f 588 -l 100 -n -f 699 -l 100 -n -f 933 -l 300 -n -f 933 -l 100 -n -f 933 -l 100 -n -f 933 -l 100 -n -f 1047 -l 400'

alias beep_song_aerodynamic='beep -f 587.3 -l 122 -d 0 -n -f 370 -l 122 -d 0 -n -f 493.9 -l 122 -d 0 -n -f 370 -l 122 -d 0 -n -f 587.3 -l 122 -d 0 -n -f 370 -l 122 -d 0 -n -f 493.9 -l 122 -d 0 -n -f 370 -l 122 -d 0 -n -f 587.3 -l 122 -d 0 -n -f 370 -l 122 -d 0 -n -f 493.9 -l 122 -d 0 -n -f 370 -l 122 -d 0 -n -f 587.3 -l 122 -d 0 -n -f 370 -l 122 -d 0 -n -f 493.9 -l 122 -d 0 -n -f 370 -l 122 -d 0 -n -f 587.3 -l 122 -d 0 -n -f 415.3 -l 122 -d 0 -n -f 493.9 -l 122 -d 0 -n -f 415.3 -l 122 -d 0 -n -f 587.3 -l 122 -d 0 -n -f 415.3 -l 122 -d 0 -n -f 493.9 -l 122 -d 0 -n -f 415.3 -l 122 -d 0 -n -f 587.3 -l 122 -d 0 -n -f 415.3 -l 122 -d 0 -n -f 493.9 -l 122 -d 0 -n -f 415.3 -l 122 -d 0 -n -f 587.3 -l 122 -d 0 -n -f 415.3 -l 122 -d 0 -n -f 493.9 -l 122 -d 0 -n -f 415.3 -l 122 -d 0 -n -f 784 -l 122 -d 0 -n -f 493.9 -l 122 -d 0 -n -f 659.3 -l 122 -d 0 -n -f 493.9 -l 122 -d 0 -n -f 784 -l 122 -d 0 -n -f 493.9 -l 122 -d 0 -n -f 659.3 -l 122 -d 0 -n -f 493.9 -l 122 -d 0 -n -f 784 -l 122 -d 0 -n -f 493.9 -l 122 -d 0 -n -f 659.3 -l 122 -d 0 -n -f 493.9 -l 122 -d 0 -n -f 784 -l 122 -d 0 -n -f 493.9 -l 122 -d 0 -n -f 659.3 -l 122 -d 0 -n -f 493.9 -l 122 -d 0 -n -f 659.3 -l 122 -d 0 -n -f 440 -l 122 -d 0 -n -f 554.4 -l 122 -d 0 -n -f 440 -l 122 -d 0 -n -f 659.3 -l 122 -d 0 -n -f 440 -l 122 -d 0 -n -f 554.4 -l 122 -d 0 -n -f 440 -l 122 -d 0 -n -f 659.3 -l 122 -d 0 -n -f 440 -l 122 -d 0 -n -f 554.4 -l 122 -d 0 -n -f 440 -l 122 -d 0 -n -f 659.3 -l 122 -d 0 -n -f 440 -l 122 -d 0 -n -f 554.4 -l 122 -d 0 -n -f 440 -l 122 -d 0 -n -f 1174.7 -l 122 -d 0 -n -f 740 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 740 -l 122 -d 0 -n -f 1174.7 -l 122 -d 0 -n -f 740 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 740 -l 122 -d 0 -n -f 1174.7 -l 122 -d 0 -n -f 740 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 740 -l 122 -d 0 -n -f 1174.7 -l 122 -d 0 -n -f 740 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 740 -l 122 -d 0 -n -f 1174.7 -l 122 -d 0 -n -f 830.6 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 830.6 -l 122 -d 0 -n -f 1174.7 -l 122 -d 0 -n -f 830.6 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 830.6 -l 122 -d 0 -n -f 1174.7 -l 122 -d 0 -n -f 830.6 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 830.6 -l 122 -d 0 -n -f 1174.7 -l 122 -d 0 -n -f 830.6 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 830.6 -l 122 -d 0 -n -f 1568 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 1318.5 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 1568 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 1318.5 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 1568 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 1318.5 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 1568 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 1318.5 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 1318.5 -l 122 -d 0 -n -f 880 -l 122 -d 0 -n -f 1108.7 -l 122 -d 0 -n -f 880 -l 122 -d 0 -n -f 1318.5 -l 122 -d 0 -n -f 880 -l 122 -d 0 -n -f 1108.7 -l 122 -d 0 -n -f 880 -l 122 -d 0 -n -f 1318.5 -l 122 -d 0 -n -f 880 -l 122 -d 0 -n -f 1108.7 -l 122 -d 0 -n -f 880 -l 122 -d 0 -n -f 1318.5 -l 122 -d 0 -n -f 880 -l 122 -d 0 -n -f 1108.7 -l 122 -d 0 -n -f 880 -l 122 -d 0 && beep -f 1174.7 -l 122 -d 0 -n -f 740 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 740 -l 122 -d 0 -n -f 1174.7 -l 122 -d 0 -n -f 740 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 740 -l 122 -d 0 -n -f 1174.7 -l 122 -d 0 -n -f 740 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 740 -l 122 -d 0 -n -f 1174.7 -l 122 -d 0 -n -f 740 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 740 -l 122 -d 0 -n -f 1174.7 -l 122 -d 0 -n -f 830.6 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 830.6 -l 122 -d 0 -n -f 1174.7 -l 122 -d 0 -n -f 830.6 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 830.6 -l 122 -d 0 -n -f 1174.7 -l 122 -d 0 -n -f 830.6 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 830.6 -l 122 -d 0 -n -f 1174.7 -l 122 -d 0 -n -f 830.6 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 830.6 -l 122 -d 0 -n -f 1568 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 1318.5 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 1568 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 1318.5 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 1568 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 1318.5 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 1568 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 1318.5 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 1318.5 -l 122 -d 0 -n -f 880 -l 122 -d 0 -n -f 1108.7 -l 122 -d 0 -n -f 880 -l 122 -d 0 -n -f 1318.5 -l 122 -d 0 -n -f 880 -l 122 -d 0 -n -f 1108.7 -l 122 -d 0 -n -f 880 -l 122 -d 0 -n -f 1318.5 -l 122 -d 0 -n -f 880 -l 122 -d 0 -n -f 1108.7 -l 122 -d 0 -n -f 880 -l 122 -d 0 -n -f 1318.5 -l 122 -d 0 -n -f 880 -l 122 -d 0 -n -f 1108.7 -l 122 -d 0 -n -f 880 -l 122 -d 0 && beep -f 1174.7 -l 122 -d 0 -n -f 740 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 740 -l 122 -d 0 -n -f 1174.7 -l 122 -d 0 -n -f 740 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 740 -l 122 -d 0 -n -f 1174.7 -l 122 -d 0 -n -f 740 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 740 -l 122 -d 0 -n -f 1174.7 -l 122 -d 0 -n -f 740 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 740 -l 122 -d 0 -n -f 1174.7 -l 122 -d 0 -n -f 830.6 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 830.6 -l 122 -d 0 -n -f 1174.7 -l 122 -d 0 -n -f 830.6 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 830.6 -l 122 -d 0 -n -f 1174.7 -l 122 -d 0 -n -f 830.6 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 830.6 -l 122 -d 0 -n -f 1174.7 -l 122 -d 0 -n -f 830.6 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 830.6 -l 122 -d 0 -n -f 1568 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 1318.5 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 1568 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 1318.5 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 1568 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 1318.5 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 1568 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 1318.5 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 1318.5 -l 122 -d 0 -n -f 880 -l 122 -d 0 -n -f 1108.7 -l 122 -d 0 -n -f 880 -l 122 -d 0 -n -f 1318.5 -l 122 -d 0 -n -f 880 -l 122 -d 0 -n -f 1108.7 -l 122 -d 0 -n -f 880 -l 122 -d 0 -n -f 1318.5 -l 122 -d 0 -n -f 880 -l 122 -d 0 -n -f 1108.7 -l 122 -d 0 -n -f 880 -l 122 -d 0 -n -f 1318.5 -l 122 -d 0 -n -f 880 -l 122 -d 0 -n -f 1108.7 -l 122 -d 0 -n -f 880 -l 122 -d 0 && beep -f 1174.7 -l 122 -d 0 -n -f 740 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 740 -l 122 -d 0 -n -f 1174.7 -l 122 -d 0 -n -f 740 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 740 -l 122 -d 0 -n -f 1174.7 -l 122 -d 0 -n -f 740 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 740 -l 122 -d 0 -n -f 1174.7 -l 122 -d 0 -n -f 740 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 740 -l 122 -d 0 -n -f 1174.7 -l 122 -d 0 -n -f 830.6 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 830.6 -l 122 -d 0 -n -f 1174.7 -l 122 -d 0 -n -f 830.6 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 830.6 -l 122 -d 0 -n -f 1174.7 -l 122 -d 0 -n -f 830.6 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 830.6 -l 122 -d 0 -n -f 1174.7 -l 122 -d 0 -n -f 830.6 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 830.6 -l 122 -d 0 -n -f 1568 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 1318.5 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 1568 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 1318.5 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 1568 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 1318.5 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 1568 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 1318.5 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 1318.5 -l 122 -d 0 -n -f 880 -l 122 -d 0 -n -f 1108.7 -l 122 -d 0 -n -f 880 -l 122 -d 0 -n -f 1318.5 -l 122 -d 0 -n -f 880 -l 122 -d 0 -n -f 1108.7 -l 122 -d 0 -n -f 880 -l 122 -d 0 -n -f 1318.5 -l 122 -d 0 -n -f 880 -l 122 -d 0 -n -f 1108.7 -l 122 -d 0 -n -f 880 -l 122 -d 0 -n -f 1318.5 -l 122 -d 0 -n -f 880 -l 122 -d 0 -n -f 1108.7 -l 122 -d 0 -n -f 880 -l 122 -d 0 && beep -f 1174.7 -l 122 -d 0 -n -f 740 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 740 -l 122 -d 0 -n -f 1174.7 -l 122 -d 0 -n -f 740 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 740 -l 122 -d 0 -n -f 1174.7 -l 122 -d 0 -n -f 740 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 740 -l 122 -d 0 -n -f 1174.7 -l 122 -d 0 -n -f 740 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 740 -l 122 -d 0 -n -f 1174.7 -l 122 -d 0 -n -f 830.6 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 830.6 -l 122 -d 0 -n -f 1174.7 -l 122 -d 0 -n -f 830.6 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 830.6 -l 122 -d 0 -n -f 1174.7 -l 122 -d 0 -n -f 830.6 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 830.6 -l 122 -d 0 -n -f 1174.7 -l 122 -d 0 -n -f 830.6 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 830.6 -l 122 -d 0 -n -f 1568 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 1318.5 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 1568 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 1318.5 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 1568 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 1318.5 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 1568 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 1318.5 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 1318.5 -l 122 -d 0 -n -f 880 -l 122 -d 0 -n -f 1108.7 -l 122 -d 0 -n -f 880 -l 122 -d 0 -n -f 1318.5 -l 122 -d 0 -n -f 880 -l 122 -d 0 -n -f 1108.7 -l 122 -d 0 -n -f 880 -l 122 -d 0 -n -f 1318.5 -l 122 -d 0 -n -f 880 -l 122 -d 0 -n -f 1108.7 -l 122 -d 0 -n -f 880 -l 122 -d 0 -n -f 1318.5 -l 122 -d 0 -n -f 880 -l 122 -d 0 -n -f 1108.7 -l 122 -d 0 -n -f 880 -l 122 -d 0 && beep -f 587.3 -l 122 -d 0 -n -f 370 -l 122 -d 0 -n -f 493.9 -l 122 -d 0 -n -f 370 -l 122 -d 0 -n -f 587.3 -l 122 -d 0 -n -f 370 -l 122 -d 0 -n -f 493.9 -l 122 -d 0 -n -f 370 -l 122 -d 0 -n -f 587.3 -l 122 -d 0 -n -f 370 -l 122 -d 0 -n -f 493.9 -l 122 -d 0 -n -f 370 -l 122 -d 0 -n -f 587.3 -l 122 -d 0 -n -f 370 -l 122 -d 0 -n -f 493.9 -l 122 -d 0 -n -f 370 -l 122 -d 0 -n -f 587.3 -l 122 -d 0 -n -f 415.3 -l 122 -d 0 -n -f 493.9 -l 122 -d 0 -n -f 415.3 -l 122 -d 0 -n -f 587.3 -l 122 -d 0 -n -f 415.3 -l 122 -d 0 -n -f 493.9 -l 122 -d 0 -n -f 415.3 -l 122 -d 0 -n -f 587.3 -l 122 -d 0 -n -f 415.3 -l 122 -d 0 -n -f 493.9 -l 122 -d 0 -n -f 415.3 -l 122 -d 0 -n -f 587.3 -l 122 -d 0 -n -f 415.3 -l 122 -d 0 -n -f 493.9 -l 122 -d 0 -n -f 415.3 -l 122 -d 0 -n -f 784 -l 122 -d 0 -n -f 493.9 -l 122 -d 0 -n -f 659.3 -l 122 -d 0 -n -f 493.9 -l 122 -d 0 -n -f 784 -l 122 -d 0 -n -f 493.9 -l 122 -d 0 -n -f 659.3 -l 122 -d 0 -n -f 493.9 -l 122 -d 0 -n -f 784 -l 122 -d 0 -n -f 493.9 -l 122 -d 0 -n -f 659.3 -l 122 -d 0 -n -f 493.9 -l 122 -d 0 -n -f 784 -l 122 -d 0 -n -f 493.9 -l 122 -d 0 -n -f 659.3 -l 122 -d 0 -n -f 493.9 -l 122 -d 0 -n -f 659.3 -l 122 -d 0 -n -f 440 -l 122 -d 0 -n -f 554.4 -l 122 -d 0 -n -f 440 -l 122 -d 0 -n -f 659.3 -l 122 -d 0 -n -f 440 -l 122 -d 0 -n -f 554.4 -l 122 -d 0 -n -f 440 -l 122 -d 0 -n -f 659.3 -l 122 -d 0 -n -f 440 -l 122 -d 0 -n -f 554.4 -l 122 -d 0 -n -f 440 -l 122 -d 0 -n -f 659.3 -l 122 -d 0 -n -f 440 -l 122 -d 0 -n -f 554.4 -l 122 -d 0 -n -f 440 -l 122 -d 0 && beep -f 587.3 -l 122 -d 0 -n -f 370 -l 122 -d 0 -n -f 493.9 -l 122 -d 0 -n -f 370 -l 122 -d 0 -n -f 587.3 -l 122 -d 0 -n -f 370 -l 122 -d 0 -n -f 493.9 -l 122 -d 0 -n -f 370 -l 122 -d 0 -n -f 587.3 -l 122 -d 0 -n -f 370 -l 122 -d 0 -n -f 493.9 -l 122 -d 0 -n -f 370 -l 122 -d 0 -n -f 587.3 -l 122 -d 0 -n -f 370 -l 122 -d 0 -n -f 493.9 -l 122 -d 0 -n -f 370 -l 122 -d 0 -n -f 587.3 -l 122 -d 0 -n -f 415.3 -l 122 -d 0 -n -f 493.9 -l 122 -d 0 -n -f 415.3 -l 122 -d 0 -n -f 587.3 -l 122 -d 0 -n -f 415.3 -l 122 -d 0 -n -f 493.9 -l 122 -d 0 -n -f 415.3 -l 122 -d 0 -n -f 587.3 -l 122 -d 0 -n -f 415.3 -l 122 -d 0 -n -f 493.9 -l 122 -d 0 -n -f 415.3 -l 122 -d 0 -n -f 587.3 -l 122 -d 0 -n -f 415.3 -l 122 -d 0 -n -f 493.9 -l 122 -d 0 -n -f 415.3 -l 122 -d 0 -n -f 784 -l 122 -d 0 -n -f 493.9 -l 122 -d 0 -n -f 659.3 -l 122 -d 0 -n -f 493.9 -l 122 -d 0 -n -f 784 -l 122 -d 0 -n -f 493.9 -l 122 -d 0 -n -f 659.3 -l 122 -d 0 -n -f 493.9 -l 122 -d 0 -n -f 784 -l 122 -d 0 -n -f 493.9 -l 122 -d 0 -n -f 659.3 -l 122 -d 0 -n -f 493.9 -l 122 -d 0 -n -f 784 -l 122 -d 0 -n -f 493.9 -l 122 -d 0 -n -f 659.3 -l 122 -d 0 -n -f 493.9 -l 122 -d 0 -n -f 659.3 -l 122 -d 0 -n -f 440 -l 122 -d 0 -n -f 554.4 -l 122 -d 0 -n -f 440 -l 122 -d 0 -n -f 659.3 -l 122 -d 0 -n -f 440 -l 122 -d 0 -n -f 554.4 -l 122 -d 0 -n -f 440 -l 122 -d 0 -n -f 659.3 -l 122 -d 0 -n -f 440 -l 122 -d 0 -n -f 554.4 -l 122 -d 0 -n -f 440 -l 122 -d 0 -n -f 659.3 -l 122 -d 0 -n -f 440 -l 122 -d 0 -n -f 554.4 -l 122 -d 0 -n -f 440 -l 122 -d 0 && beep -f 1174.7 -l 122 -d 0 -n -f 740 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 740 -l 122 -d 0 -n -f 1174.7 -l 122 -d 0 -n -f 740 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 740 -l 122 -d 0 -n -f 1174.7 -l 122 -d 0 -n -f 740 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 740 -l 122 -d 0 -n -f 1174.7 -l 122 -d 0 -n -f 740 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 740 -l 122 -d 0 -n -f 1174.7 -l 122 -d 0 -n -f 830.6 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 830.6 -l 122 -d 0 -n -f 1174.7 -l 122 -d 0 -n -f 830.6 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 830.6 -l 122 -d 0 -n -f 1174.7 -l 122 -d 0 -n -f 830.6 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 830.6 -l 122 -d 0 -n -f 1174.7 -l 122 -d 0 -n -f 830.6 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 830.6 -l 122 -d 0 -n -f 1568 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 1318.5 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 1568 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 1318.5 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 1568 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 1318.5 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 1568 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 1318.5 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 1318.5 -l 122 -d 0 -n -f 880 -l 122 -d 0 -n -f 1108.7 -l 122 -d 0 -n -f 880 -l 122 -d 0 -n -f 1318.5 -l 122 -d 0 -n -f 880 -l 122 -d 0 -n -f 1108.7 -l 122 -d 0 -n -f 880 -l 122 -d 0 -n -f 1318.5 -l 122 -d 0 -n -f 880 -l 122 -d 0 -n -f 1108.7 -l 122 -d 0 -n -f 880 -l 122 -d 0 -n -f 1318.5 -l 122 -d 0 -n -f 880 -l 122 -d 0 -n -f 1108.7 -l 122 -d 0 -n -f 880 -l 122 -d 0 && beep -f 1174.7 -l 122 -d 0 -n -f 740 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 740 -l 122 -d 0 -n -f 1174.7 -l 122 -d 0 -n -f 740 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 740 -l 122 -d 0 -n -f 1174.7 -l 122 -d 0 -n -f 740 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 740 -l 122 -d 0 -n -f 1174.7 -l 122 -d 0 -n -f 740 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 740 -l 122 -d 0 -n -f 1174.7 -l 122 -d 0 -n -f 830.6 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 830.6 -l 122 -d 0 -n -f 1174.7 -l 122 -d 0 -n -f 830.6 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 830.6 -l 122 -d 0 -n -f 1174.7 -l 122 -d 0 -n -f 830.6 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 830.6 -l 122 -d 0 -n -f 1174.7 -l 122 -d 0 -n -f 830.6 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 830.6 -l 122 -d 0 -n -f 1568 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 1318.5 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 1568 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 1318.5 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 1568 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 1318.5 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 1568 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 1318.5 -l 122 -d 0 -n -f 987.8 -l 122 -d 0 -n -f 1318.5 -l 122 -d 0 -n -f 880 -l 122 -d 0 -n -f 1108.7 -l 122 -d 0 -n -f 880 -l 122 -d 0 -n -f 1318.5 -l 122 -d 0 -n -f 880 -l 122 -d 0 -n -f 1108.7 -l 122 -d 0 -n -f 880 -l 122 -d 0 -n -f 1318.5 -l 122 -d 0 -n -f 880 -l 122 -d 0 -n -f 1108.7 -l 122 -d 0 -n -f 880 -l 122 -d 0 -n -f 1318.5 -l 122 -d 0 -n -f 880 -l 122 -d 0 -n -f 1108.7 -l 122 -d 0 -n -f 880 -l 122 -d 0'
