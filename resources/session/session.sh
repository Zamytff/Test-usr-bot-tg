#!/usr/bin/env bash
# Ultroid - UserBot
# Copyright (C) 2021 TeamUltroid
#
# This file is a part of < https://github.com/TeamUltroid/Ultroid/ >
# PLease read the GNU Affero General Public License in <https://www.github.com/TeamUltroid/Ultroid/blob/main/LICENSE/>.

clear
echo -e "\e[1m"
echo "/_\   | |    | _ \ | | | |   /_\"            
echo "/ _ \  | |__  |  _/ | _ _ |  / _ \"
echo " /_/ \_\ |____| |_|   |_| |_| /_/ \_\"
echo -e "\e[0m"
sec=5
spinner=(⣻ ⢿ ⡿ ⣟ ⣯ ⣷)
while [ $sec -gt 0 ]; do
    echo -ne "\e[33m ${spinner[sec]} Starting dependency installation in $sec seconds...\r"
    sleep 1
    sec=$(($sec - 1))
done
echo -e "\e[1;32mInstalling Dependencies ---------------------------\e[0m\n" # Don't Remove Dashes / Fix it
apt-get update
apt-get upgrade -y
pkg upgrade -y
pkg install python wget -y
wget https://raw.githubusercontent.com/zeeoneofc/Telegram-Alphabot/main/resources/session/ssgen.py
pip install telethon pyrogram
clear
python3 ssgen.py
