clear
echo -e "\e[4;31m CASBERG Productions !!! \e[0m"
echo -e "\e[1;34m Presents \e[0m"
echo -e "\e[1;32m URL_shortner \e[0m"
echo "Press Enter To Continue"
read a1
if [[ -s update.casberg ]];then
echo "All Requirements Found...."
else
echo 'Installing Requirements....'
echo .
echo .
apt install figlet toilet python curl -y
apt install python3-pip
pip install pyshorteners
pip install validators
apt install toilet -y
apt install boxes
apt install lolcat -y
echo This Script Was Made By CASBERG >update.casberg
echo Requirements Installed....
echo Press Enter To Continue...
read upd
fi
# while :
# do
# rm *.xxx >/dev/null 2>&1
clear
echo -e "\e[1;31m"
figlet CASBERG
echo -e "\e[1;34m Created By \e[1;32m"
toilet -f ivrit 'CASBERG' | boxes -d cat -a hc -p h8 | lolcat
echo "$(date '+%D %T' | toilet -f term -F border --gay)"; sleep 1
echo -e "\e[4;34m This url shortner Was Created By CASBERG \e[0m"
echo -e "\e[1;34m For Any Queries Mail Me!!!\e[0m"
echo -e "\e[1;32m           Mail: casbergskull@gmail.com \e[0m"
echo " "
python3 shortner.py

exit 0
