#!/bin/sh
CAN_I_RUN_SUDO=$(sudo -n uptime 2>&1|grep "load"|wc -l)
 if [ ${CAN_I_RUN_SUDO} -gt 0 ]
 then
	 echo "Sudo test succeded!"
 else
	 echo "You do not have sudo installed, or you aren't using it."
     exit
 fi
 echo "Welcome to the ShInstall Install System!"
 echo "ShInstall version 18.04 (beta 0.0.1) from GalactiDev"
 echo "Prepairing to install the program PROGRAM NAME HERE! from the files in the online website INSERT LINK HERE." #Change the part labeled PROGRAM NAME HERE! with the name of your program and the last part of this line to your download link for the file.
 read -p "Do you wish to continue?(Y/n)" yn
 case $yn in
	[Nn]* ) exit;;
	esac
#insert your install code below
