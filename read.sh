#!/bin/bash


LINE_NUMBER=1
while read LINE
do 
  echo "${LINE}"
  sleep 1
  ((LINE_NUMBER++))
done < sonnet116
