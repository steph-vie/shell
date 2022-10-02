#!/bin/bash

if [ $# -lt 1 ]
then
	echo -e "Pas de \033[33;1mVariables\033[0m"
else
	nomcomplet=$1
	fichier=${nomcomplet%.*}
	path=`pwd`
	# echo $path/$fichier
	if [ ! -d $path/$fichier ]
	then
		echo -e "Traitement de \033[35m"$nomcomplet"\033[0m"
		mkdir $fichier
		#ffmpeg -loglevel error -i $1 -vf fps=1/7 $fichier/img%03d.jpg >/dev/null
		ffmpeg -loglevel info -i $1 -vf fps=1/5 $fichier/img%03d.jpg
	fi
fi
