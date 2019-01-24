#!/bin/bash

# make sure the following env variables are set:
# DIS0      the id of display 0 (and your main display)
# DIS1      the id of display 1 (and your main display)
# DIS0_ROT  the desired rotation of display 0 (0, 90, 180, 270)
# DIS1_ROT  the desired rotation of display 1 (0, 90, 180, 270)

ERROR=0

if [ -z "$DIS0" ] ; then
    echo "\$DIS0 has not been set. Set it to the ID of your primary display found via ./fb-rotate"
    ERROR=1
fi
if [ -z "$DIS1" ] ; then
    echo "\$DIS1 has not been set. Set it to the ID of your secondary display found via ./fb-rotate"
    ERROR=1
fi
if [ -z "$DIS0_ROT" ] ; then
    echo "\$DIS0_ROT has not been set. Set it to the desired rotation of your primary display: 0, 90, 180, or 270"
    ERROR=1
fi
if [ -z "$DIS1_ROT" ] ; then
    echo "\$DIS1_ROT has not been set. Set it to the desired rotation of your secondary display: 0, 90, 180, or 270"
    ERROR=1
fi

# exit if error
if [ "$error" = 1 ] ; then
    exit 1
fi

# set rotations
./fb-rotate -d $DIS0 -r $DIS0_ROT
./fb-rotate -d $DIS1 -r $DIS1_ROT

# set main display
sleep 2 # wait a second before setting home 
./fb-rotate -d $DIS0 -m

