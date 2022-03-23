#!/bin/bash

echo "Enter the hostname in this format: example.com, github.com, etc"
read -p "Enter the hostname you want to ping: " HOST

ping -c 1 $HOST

if [ "$?" -eq "0" ]
then
  echo "$HOST is reachable."
else
  echo "$HOST is not reachable."
fi
