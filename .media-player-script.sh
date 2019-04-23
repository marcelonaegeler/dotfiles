#!/bin/sh
## -- This script will imitate Gnome's Media Controls (Play/Pause, Next, Previous, Stop) -- ##
## -- It will assume you are using a media application that is compatible with MPRIS or  -- ##
## -- "Media Player Remote Interfacing Specification"                                    -- ##

# Search for running media applications
# and store into apps array
# *I used NO parentheses
apps=`qdbus | grep org.mpris.MediaPlayer2 | sed 's/.*\.//'`

# Get the first parameter
cmd=PlayPause
if [ "$#" -gt 0 ]
  then
    cmd="$1"
  fi

# For each application send the "PlayPause" command
# *I used apps instead of apps[@]
for app in "${apps}"
  do
    qdbus org.mpris.MediaPlayer2.$app /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.$cmd
  done
