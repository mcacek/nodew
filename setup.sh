#!/bin/bash

NODE_VERSION="v0.10.36"
NVM_VERSION="v0.25.4"
NVM_DIR="$HOME/.nvm"

if [ ! -d "$NVM_DIR" ]; then
  # Download NVM if not currently installed.
  curl -o- https://raw.githubusercontent.com/creationix/nvm/$NVM_VERSION/install.sh | bash
  echo "Installing NVM..."
fi

# Add node to our path
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

if [ ! -d "$NVM_HOME/$NODE_VERSION" ]; then
  echo "Installing $NODE_VERSION."
  nvm install $NODE_VERSION
fi

echo $PATH
export PATH=$PATH

echo "Using installed node $NODE_VERSION installed at $NVM_HOME/$NODE_VERSION."
