#!/bin/bash

# -------------- #
# common/node.sh #
# -------------- #

# Bash script used to install the yarn package manager.

# --------------------------------------------------------------------------------------------------- #

# Install Yarn
# ------------

curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

sudo apt update
sudo apt install -y yarn

# --------------------------------------------------------------------------------------------------- #

# EOF #
