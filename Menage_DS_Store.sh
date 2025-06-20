#!/bin/bash


for fic in `find . -name ".DS_Store"`
	do
		echo "Suppression de $fic"
		rm -rf $fic
	done

