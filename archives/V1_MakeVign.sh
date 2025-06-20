#!/bin/bash

# Script pour créer des images formées de vignettes d'une vidéo

if [ -d "$1" ]
	then
		for ext in 'mp4' 'avi'
		do
			echo "Traitement du dossier : $1"

			for video in `ls $1*$ext`
			do
				mtn -w 1920 -c 3 -r 3 -D 8 -W -b 0.95 -o _vign.jpg  -f /usr/share/fonts/truetype/liberation/LiberationMono-Regular.ttf $video	
			done
		done
	else
		echo "$1 n'est pas un dossier"
	fi
