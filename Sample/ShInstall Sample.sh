#/bin/sh
 CAN_I_RUN_SUDO=$(sudo -n uptime 2>&1|grep "load"|wc -l)
 if [ ${CAN_I_RUN_SUDO} -gt 0 ]
 then
	 echo "Sudo test succeded!"
 else
	 echo "You do not have sudo installed, or you can't use it."
     exit
 fi
 sudo -v
 echo "Welcome to the ShInstall Demo!"
 #start copying here!
 echo "ShInstall version 18.04 b1 from GalactiDev"
 echo "Prepairing to install the program test1 from the files in the online website https://bit.ly/2HGVWmf." #Change the last part of this line to your download link for the file.
 read -p "Do you wish to continue?(Y/n)" yn
 case $yn in
	[Nn]* ) exit;;
	esac
#insert your install code below
wget https://github.com/enderger/ShInstall-system/raw/master/Sample/ShInstall%20Sample%20Download.tar.gz
sudo tar -xvf "ShInstall Sample Download.tar.gz" 
sudo chown -R $SUDO_USER "ShInstall Sample Download"  #add this line with the name of the extracted archive!
cd "ShInstall Sample Download" 
mkdir /home/$SUDO_USER/Desktop/"Desktop Folder!"/ #For any mkdir, make sure to grant the sudoer ownership of the folder!
sudo chown $SUDO_USER /home/$SUDO_USER/Desktop/"Desktop Folder!"
mv "Desktop folder!"/* /home/$SUDO_USER/Desktop/"Desktop Folder!"
rm -rf "Desktop folder!"
mv "Desktop file!" /home/$SUDO_USER/Desktop/
cd ../
rm -rf "ShInstall Sample Download"
rm -rf "ShInstall Sample Download.tar.gz"
cd /home/$SUDO_USER/Desktop
exit
