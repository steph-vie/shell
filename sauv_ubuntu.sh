#!/bin/bash

# Script pour la sauvegarde du partage share de Recalbox

FICH=sauve_ubuntu-$(date +"%Y%m%d")
FICHSAUVE=mnt/syno_sauvegardes/FICH

echo "********* Debut sauvegarde ********************" > FICHSAUVE

echo -e "\033[33mSauvegarde de Calibre\033[0m"
rsync -av --stats /media/steph/dd_red/calibre/ mnt/syno_sauvegardes/ubuntu-steph/calibe/ >> FICHSAUVE

echo -e "\033[33mSauvegarde des Comics\033[0m"
rsync -av --stats /media/steph/dd_red/librairie_comics/ mnt/syno_sauvegardes/librairie_comics/ >> FICHSAUVE