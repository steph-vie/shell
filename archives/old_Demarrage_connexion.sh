#!/bin/bash

# Script generale de connexion 

echo "Connexion au Disque sur rouge"
/root/bin/Connexion_dd_rouge.sh

echo "Connexion au dossier home du Synology"
#/root/bin/Connexion_synology_home.sh

echo "Connexion au dossier perso du Synology"
#/root/bin/Connexion_synology_perso.sh

echo "Connexion au dossier web du synology"
#/root/bin/Connexion_synology_web.sh
