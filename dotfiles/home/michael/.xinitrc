#!/bin/sh
#########################################################################################
# .xinitrc                                                                              #
#                                                                                       #
# Version:               1.0.0                                                          #
# Author:                Michael De Pasquale                                            #
# Description:                                                                          #
#   Changes X settings. Executed by xinit when logging in.                              #
#########################################################################################

/home/michael/.xsessionrc

#Run i3 (if it isn't already running)
if ! pgrep "i3$"; then
    exec i3
fi

# Return exit code 0 for succeess
exit 0
