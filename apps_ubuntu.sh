#!/usr/bin/env bash

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure we’re using the latest packages
sudo apt-get update

sudo apt-get install exuberant-ctags -y
sudo apt-get install ack-grep -y
sudo apt-get install silversearcher-ag -y
