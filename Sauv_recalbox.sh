#!/bin/bash

# Script pour la sauvegarde du partage share de Recalbox

# Variable
FICHSAUVE=recalbox-$(date +"%Y%m%d").tar.gz

echo -e "le nom de l'archive est :\033[36m"$FICHSAUVE"\033[0m"

echo -e "\033[33mCOPIE DES FICHIERS\033[0m"
echo "******************"
if [ ! -d /home/steph/sauv_recalbox/ ]
then
	mkdir -p /home/steph/sauv_recalbox/
fi
rsync -ave ssh root@192.168.1.56:/recalbox/share/ /home/steph/sauv_recalbox/
# sudo cp -pvr /mnt/recalbox/* /home/steph/sauv_recalbox/

echo -e "\033[33mCREATION DE L'ARCHIVE\033[0m"
echo "*********************"
tar cfz /home/steph/$FICHSAUVE /home/steph/sauv_recalbox/*

echo -e "\033[33mDEPLACEMENT DE L'ARCHIVE\033[0m"
echo "************************"
# mv -v /home/steph/$FICHSAUVE /mnt/syno_home/Steph/RetroGamming/

# sudo rm -rf /home/steph/sauv_recalbox/*
	
