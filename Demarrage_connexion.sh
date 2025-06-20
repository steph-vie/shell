#!/bin/bash

# Script generale de connexion 

echo "Connexion au dossier home du Synology"
sudo mount -t nfs 192.168.1.63:/volume1/homes /mnt/syno_home/
