#!/bin/bash

#Script de connexion au dossier perso du synology


if [ -d /media/perso ]
then
	echo -e "Présence du dossier /media/synology \e[1;32mOK\e[0;m"
	mount -o user=steph //192.168.1.63/perso /media/perso/
else
	echo -e "Le dossier /media/perso n'existe pas"
fi

