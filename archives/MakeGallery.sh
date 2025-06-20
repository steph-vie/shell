#!/bin/bash

# Vérification des paramètres
# S'ils sont absents, on met une valeur par défaut



# Préparation des fichiers et dossiers



if [ ! -e miniatures ]
	then
		mkdir miniatures
fi



# Génération des miniatures et de la page

for image in `ls *.png *.jpg *.jpeg *.JPG 2>/dev/null`
	do
		# echo "traitement de "$image
		convert $image -thumbnail '200x200>' miniatures/$image
		
	done
