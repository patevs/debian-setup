#!/bin/bash

# -------------- #
# common/ruby.sh #
# -------------- #

# Bash script used to install the Ruby programming language.
# Installs Ruby, updates Ruby Gems, and installs some useful Gems.

# --------------------------------------------------------------------------------------------------- #

# Install Ruby
# ------------

sudo apt install -y ruby-full

# Update Ruby Gems
# ----------------

sudo gem update --system
sudo gem update

# Ruby Gem Installs
# -----------------

sudo gem install \
  bundler \
  rails \
  neovim

# --------------------------------------------------------------------------------------------------- #

# EOF #
