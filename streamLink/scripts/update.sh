#!/bin/bash

cd /home/nak-watchdog/NAK_streamLink

echo -e "=> Updating streamLink via GitHub ... \n"
#git reset --hard
#git fetch --all
#git pull --no-rebase

echo -e '=> Installing Updates ...\n'
sudo apt update
sudo apt upgrade -y

# Python Package
echo -e '=> Updating Python Packages ...\n'
#pip install youtube_dl --upgrade
pip install --upgrade --break-system-packages yt_dlp
pip install --upgrade --break-system-packages python-vlc
pip install --upgrade --break-system-packages tk
pip install --upgrade --break-system-packages RPi.GPIO
pip install --upgrade --break-system-packages ConfigParse

# Autostart
echo -e '=> Adding script to autostart ...\n'
cp ./streamLink/start_streamLink.desktop ~/.config/autostart/start_streamLink.desktop

# Run config script
#echo -e "=> You can now run the config script again to select a stream location via \n ./NAK_streamLink/streamLink/scripts/config.sh"
