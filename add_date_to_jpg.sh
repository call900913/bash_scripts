#!/bin/bash
# This script adds today's date to the name of all the .jpg files in its folder.
# e.g. mypicture.jpg -> 2022-03-22--mypicture.jpg
PICTURES=$(ls *.jpg)
DATE=$(date +%F)

for PICTURE in $PICTURES
do
  echo "${PICTURE} -> ${DATE}--${PICTURE}"
  mv ${PICTURE} ${DATE}--${PICTURE}
done
