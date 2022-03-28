#!/bin/bash
# a block of code that tests a given condition.
# In this case, that condition is the hostname you entered and your confirmation.

echo "Script will run until the app is no longer reachable. To terminate this script, press ctrl-C."
echo "Enter the hostname in this format: example.com, github.com, etc"
read -p "Enter the name of the host you want to ping: " HOST

# while [ "$ANSWER" != "y" ]
# do
#   read -p "Enter your name: " NAME
#   read -p "${NAME}; do I have that right? (y/n)" ANSWER
# done

while ping -c 1 $HOST >> /dev/null
do
  echo "App still up"
  sleep 2
done
