#!/bin/bash

#You just need to create the folder VPN and copy all configuration files as well as certificates and psdd.conf file into it.
cd ~/Documents/VPN
clear
printf "Here, I'll run the IranSec VPN but whitch version?\033[1m\n\t\e[3$(( $RANDOM * 6 / 32767 + 1 ))m1- UK1 - V1\n\t\e[3$(( $RANDOM * 7 / 32767 + 1 ))m2- US1 - V1\n\t\e[3$(( $RANDOM * 8 / 32767 + 1 ))m3- US2 - V1\033[0m"
read option
if [ $option = 1 ]; then 
	sudo openvpn --config UK1-IST-V1-Linux.ovpn
elif [ $option = 2 ]; then
	sudo openvpn --config US1-IST-V1-Linux.ovpn
elif [ $option = 3 ]; then
	sudo openvpn --config US2-IST-V1-Linux.ovpn
else
	printf "\n\n\nJust press 1, 2, or 3. I can't understand other charachters!"
	sleep 1
fi
cd /
#generated by http://patorjk.com/software/taag/#p=testall&h=0&v=0&c=bash&f=Isometric1&t=IranSec
iransec[0]=" ###                       #####                "
iransec[1]="  #  #####    ##   #    # #     # ######  ####  "
iransec[2]="  #  #    #  #  #  ##   # #       #      #    # "
iransec[3]="  #  #    # #    # # #  #  #####  #####  #      "
iransec[4]="  #  #####  ###### #  # #       # #      #      "
iransec[5]="  #  #   #  #    # #   ## #     # #      #    # "
iransec[6]=" ### #    # #    # #    #  #####  ######  ####  "
iransec[7]=" A    S h i e l d    f o r    D e f e n d e r s "
iransec[8]="              support@iransec.org               "
clear
#for aligning it center and randomize its color for each run || read more: http://www.linuxquestions.org/questions/linux-newbie-8/bash-script-center-text-on-screen-4175417274/ and http://www.commandlinefu.com/commands/view/12548/generate-a-random-text-color-in-bash
printf "\e[3$(( $RANDOM * 6 / 32767 + 1 ))m"
y=$[($(tput cols)-${#iransec[0]})/2]
x=$[($(tput lines)-${#iransec[@]})/2]
for i in "${!iransec[@]}"
	do
	    tput cup $x $y
	    if [ $i = 7 ]; then
	    	printf "\033[1m\e[100m\e[39m ${iransec[$i]} \033[0m"
	    else
	    	printf "\e[3$(( $RANDOM * $i / 32767 + 1 ))m ${iransec[$i]} \033[0m"
	    fi
	    x=$[x+1]
	done
	
echo ""
echo ""
echo ""
echo ""
