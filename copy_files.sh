#!/bin/bash
# This script makes a copy of the file you enter in the prompt
# and places it in a folder named copies/ inside the current directory
read -p "Enter name of the file: " FILE

function copy_files() {
  mkdir copies/
  if [ -f $1 ]
  then
    local COPY="./copies/$(basename FILE).$(date +%F).$$"
    echo "Copying $FILE"
    cp $FILE copies/
  else
    # exit the function with a non-zero exit status
    return 1
  fi
}

copy_files

if [ $? -eq 0 ]
then 
  echo "Copy successful."
else
  echo "Copy failed."
  exit 1
fi
