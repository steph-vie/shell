#!/bin/bash

# Script pour reduire les fichiers image de 50%

if [ $# -lt 1 ]
then
	echo -e "\033[31;1mAbsence de la variables\033[0m: en %"
else

if [ ! -d ./modifie ]
then
	mkdir -p ./modifie
else
	echo -e "\033[33;1mRepertoire deja existant\033[0m" 
fi

for photos in $( ls *.jpg)
do
		convert -verbose -resize $1% $photos ./modifie/$photos
done
fi
