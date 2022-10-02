#!/bin/bash

for video in `ls *.mp4`
do
	if [ ! -d $video ]
	then
		/home/pi/bin/MakeThumbs.sh $video 
	fi
done

for video in `ls *.avi`
do
        if [ ! -d $video ]
        then
                /home/pi/bin/MakeThumbs.sh $video
        fi
done

for video in `ls *.wmv`
do
        if [ ! -d $video ]
        then
                /home/pi/bin/MakeThumbs.sh $video
        fi
done

for video in `ls *.mov`
do
        if [ ! -d $video ]
        then
                /home/pi/bin/MakeThumbs.sh $video
        fi
done
for video in `ls *.m4v`
do
	if [ ! -d $video ]
        then
                 /home/pi/bin/MakeThumbs.sh $video
        fi
done
