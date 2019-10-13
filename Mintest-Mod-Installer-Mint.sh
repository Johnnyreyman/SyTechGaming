#/bin/bash
#A simple mod installer for Minetest on Linux Mint.
cd ~/Downloads/
mkdir ./'Minetest Mods'
cd ./'Minetest Mods'
Download=$(zenity --entry --text "URL to Download Mod" --title "Download Link?" --entry-text="");
wget echo $Download
Rename=$(zenity --entry --text "What is the name of this mod?" --title "Mod Name" --entry-text="");
mv master.zip $Rename-master.zip
gksudo "unzip /home/johnathanr/Downloads/'Minetest Mods'/$Rename-master.zip -d /usr/share/games/minetest/mods/"
zenity --info --text "Your $Rename Mod Installed correctly. Enable it in Minetest to continue"
minetest
zenity --info --text "Thank you for using the Minetest installer by SyTechGames!"
