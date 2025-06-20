#!/bin/bash


# Autre methode pour créer des vignettes à partir de videos
# Version 3

echo -e "Repertoire de travail \033[33;1m$(pwd)\033[0m" 
nbrfic=$(find . \( -name '*.mp4' -o -name '*.avi' \) | wc -l) 
echo "$nbrfic videos a traiter"

for video in `find . \( -name '*.mp4' -o -name '*.avi' -o -name '*.wmv' \) -print`
do
	echo "traitement $video"
	vcs -p steph $video -o $video".png"
done
 
