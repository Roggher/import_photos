#!/bin/bash

DATE=`date +%Y-%m-%d`




mkdir ~/Pictures/Archive/FUJI_JPEG/$DATE
mkdir ~/Pictures/Archive/FUJI_RAW/$DATE


jpeg_directory="$HOME/Pictures/Archive/FUJI_JPEG/$DATE"
raw_directory="$HOME/Pictures/Archive/FUJI_RAW/$DATE"
card="/Volumes/Untitled/DCIM/101_FUJI"

for file in $card/* ; do
	echo $file
	if [[ "$file" == *.RAF ]] ; then 
		cp $file "$raw_directory" 
	elif [[ "$file" == *.JPG ]] ; then 
		cp $file "$jpeg_directory"
	fi 
done
