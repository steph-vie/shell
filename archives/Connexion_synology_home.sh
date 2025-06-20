#!/bin/bash

#Script de connexion au dossier web du synology


if [ -d /media/synology ]
then
	echo -e "Présence du dossier /media/synology \e[1;32mOK\e[0;m"
	mount -o user=steph //192.168.1.63/home /media/home/
else
	echo -e "Le dossier /media/synology n'existe pas"
fi

#Nouvelle commande
sudo mount -t nfs 192.168.1.63:/volume1/homes /mnt/home/ --verbose
