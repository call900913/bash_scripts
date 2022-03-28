#!/bin/bash
# a block of code that tests a given condition.
# In this case, that condition is the name you entered and your confirmation.


while [ "$ANSWER" != "y" ]
do
  read -p "Enter your name: " NAME
  read -p "${NAME}; do I have that right? (y/n)" ANSWER
done
