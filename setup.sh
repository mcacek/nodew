#!/bin/bash

NODEWRC=".nodewrc"
NVM_DIR="$HOME/.nvm"

if test -e "$PWD/$NODEWRC"; then
  source .nodewrc
else
  echo "Nodew configuration file not found!"
  exit 1;
fi

if [ ! -d "$NVM_DIR" ]; then
  echo "Installing NVM..."

  # Download NVM if not currently installed.
  curl -o- https://raw.githubusercontent.com/creationix/nvm/$NODEW_NVM_VERSION/install.sh | bash
fi

# Add node to our path
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

if [ ! -d "$NVM_DIR/$NODEW_NODE_VERSION" ]; then
  echo "Installing $NODEW_NODE_VERSION..."
  nvm install $NODEW_NODE_VERSION
fi

echo "Using installed node $NODEW_NODE_VERSION installed at $NVM_DIR/$NODEW_NODE_VERSION."
