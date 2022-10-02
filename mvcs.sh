#!/bin/bash

for video in `ls *.mp4`
do
	if [ ! -d $video ]
	then
		/usr/bin/vcs -p white -n 8 -c 4 -H 500 $video 
	fi
done
