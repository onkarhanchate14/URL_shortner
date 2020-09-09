#!/bin/bash

# Welcome Splashscreen
welcome() {
clear
toilet -f ivrit 'URL_shortner V 1.2 Made by CASBERG' -w 90 | boxes -d cat -a hc -p h8 | lolcat
echo "Press Enter To Continue"
read a1
}

# Check Dependencies Environment
env_check() {
if ! [[ -f update.casberg ]];then
reqinstall
else
menu
fi
}

reqinstall() {
echo 'Installing Requirements...'
echo .
echo .
apt install figlet toilet python curl -y
apt install python3-pip
pip install pyshorteners
pip install validators
apt install toilet -y
apt install boxes
apt install lolcat -y
touch update.casberg
echo All Requirements has been installed
sleep 3
menu
}

# Start URL-Shortner
menu() {
clear
toilet -f ivrit 'URL_shortner V 1.2 Made by CASBERG' -w 90 | boxes -d cat -a hc -p h8 | lolcat
echo ""
echo "$(date '+%D %T' | toilet -f term -F border --gay)"; sleep 1
echo -e "\e[1;34m The URL_shortner was created by CASBERG \e[0m"
echo -e "\e[1;34m For any queries mail me.\e[0m"
echo -e "\e[1;32m Mail: casbergskull@gmail.com \e[0m"
echo ""
python3 shortner.py
}

welcome
env_check
