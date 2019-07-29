i#!/bin/bash

now=$(date +"%Y %b %d %H:%M:%S")
echo "Stream Launched at $now" >> /home/osmc/ooftv/logs/oofstream.log

# sleep 40 #if you have to launch at startup, put this in to wait for eveything to laoad

#PLAY A FOLDER:
#kodi-send --action=PlayerControl"(repeatall)"
#kodi-send --action=PlayerControl"(RandomOn)"
#kodi-send --action=PlayMedia"(/home/osmc/videos , isdir)"

#Play a playlist
kodi-send --action=PlayMedia"(/home/osmc/ooftv/playlists/today.m3u)"

#This command will enter fullscreen if not in fullscreen, or exit fullscreen if in fullscreen
#need to figure out how to tell what state it is in so don't accidentally exit fullscreen
#kodi-send --action=FullScreen
