#!/bin/bash
# loggs a message using the logger command
# includes a tag loggr_script
# use it like so:
# logr facility severity message

read -p "Enter the facility (kern, user, etc): " FAC
read -p "Enter the severity (debug, info, etc): " SEV
read -p "Enter the error message: " MSG


function loggr() {
  TIMESTAMP=$(date +"%Y-%m-%d %T")
  logger -t logger_script -sip ${FAC}.${SEV} $MSG
}

loggr
