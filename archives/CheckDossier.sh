#!/bin/bash


#if [ $1 = "force" ]
#then
#	for dossier in `ls`
#		do
#			if [ -d $dossier ] 
#			then	
#				echo "traitement du dossier : $dossier"
#				cd $dossier
#				/Users/steph/bin/MakeGallery.sh
#				cd ..
#			fi
#		done
#else
	for dossier in `ls`
		do
			if [ -d $dossier ]
			then
				cd $dossier
				if [ ! -d miniatures ]
				then
					echo "traitement du dossier : $dossier"	
					/root/bin/MakeGallery.sh
				fi
			cd ..
			fi
	done
#fi

