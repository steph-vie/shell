#!/bin/bash
#
#Sauvegarde par copie du repertoire GestionSet du Synology
#
#Version 1.0

# Implémentation des variables
FICHSAUVE=gestionset-$(date +"%Y%m%d").tar.gz
DIRSAVE=/media/dd_rouge/sauvegardes
DIRSITE=/media/synology
#DIRSITE=/media/testsauv
LOG=$DIRSAVE/log-$(date +"%Y%m%d").log


cd $DIRSAVE
echo "**************** DEBUT SAUVEGARDE *******************" >> $LOG
echo $(date +"%H:%M:%S")" - Debut de la sauvegarde"  >> $LOG
NBLIGNE=$(ls -l *.gz | wc -l)
case $NBLIGNE in
	0) echo "aucune ancienne sauvegarde" >> $LOG
	;;
	1) OLDSAVE=$(ls  *.gz)
	echo "La sauvegarde precedente est "$OLDSAVE >> $LOG
	;;
	*) echo "trop d'anciennes sauvegardes donc je ne supprime rien" >> $LOG
	;;
esac

# Création de l'archive
echo $(date +"%H:%M:%S")" - Creation de l'archive" >> $LOG
echo "Elle aura comme nom : "$FICHSAUVE >> $BLOG
tar cfz $FICHSAUVE -C $DIRSITE GestionSet
echo $(date +"%H:%M:%S")" - Fin de l'archive" >> $LOG
# Suppression de l'archive précedente
echo $(date +"%H:%M:%S")" - Suppression de l'archive précedente" >> $LOG
rm $OLDSAVE
echo "*********** FIN SAUVEGARDE *************" >> $LOG
