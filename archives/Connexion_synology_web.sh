#!/bin/bash

#Script de connexion au dossier web du synology


if [ -d /media/synology ]
then
	echo -e "Présence du dossier /media/synology \e[1;32mOK\e[0;m"
	mount -o user=steph //192.168.1.63/web /media/synology/
else
	echo -e "Le dossier /media/synology n'existe pas"
fi

