#!/usr/bin/env bash

if ! which brew > /dev/null; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi;

# Update brew
brew update

# Install everything in Brewfile
brew bundle
