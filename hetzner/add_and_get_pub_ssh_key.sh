#!/bin/bash

# Check if an email was provided as an argument
if [ "$#" -ne 1 ]; then
  echo "Usage: $0 your_email@example.com"
  exit 1
fi

EMAIL="$1"

# Generate the SSH key
ssh-keygen -t ed25519 -C "$EMAIL" -f ~/.ssh/id_ed25519 -N ""

# Start the SSH agent in the background
eval "$(ssh-agent -s)"

# Add your SSH private key to the SSH agent
ssh-add ~/.ssh/id_ed25519
cat ~/.ssh/id_ed25519.pub
