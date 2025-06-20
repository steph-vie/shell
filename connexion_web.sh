#!/bin/bash

# Script generale de connexion 

echo "Connexion au dossier web du Synology"
sudo mount -t nfs 192.168.1.63:/volume1/web /mnt/syno_web/
