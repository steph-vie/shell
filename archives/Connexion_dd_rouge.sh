#!/bin/bash

#Script de connexion du DD externe rouge


if [ -d /media/dd_rouge ]
then
	echo -e "Présence du dossier /media/dd_rouge \e[1;32mOK\e[0;m"
	mount /dev/sdb1 /media/dd_rouge/
else
	echo -e "Le dossier /media/dd_rouge n'existe pas"
fi

