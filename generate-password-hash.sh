#!/bin/bash

# Check if both username and password are provided
if [ -z "$1" ] || [ -z "$2" ]; then
  echo "Usage: $0 <username> <password>"
  exit 1
fi

# Store the username and password parameters
USERNAME="$1"
PASSWORD="$2"

# Run the command, replace the username and password
htpasswd -nbB "$USERNAME" "$PASSWORD" | cut -d ":" -f 2 | sed 's/\$/\$\$/g'