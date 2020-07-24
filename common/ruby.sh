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

# rbenv
# =====

# Install Dependencies
# --------------------

# sudo apt install -y \
#   git \
#   libssl-dev \
#   libreadline-dev \
#   zlib1g-dev \
#   autoconf \
#   bison \
#   build-essential \
#   libyaml-dev \
#   libreadline-dev \
#   libncurses5-dev \
#   libffi-dev \
#   libgdbm-dev

# Install rbenv
# -------------

# curl -sL https://github.com/rbenv/rbenv-installer/raw/master/bin/rbenv-installer | bash -

# Add `$HOME/.rbenv/bin` to user path

# echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
# echo 'eval "$(rbenv init -)"' >> ~/.bashrc
# source ~/.bashrc

# If using ZSH

# echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.zshrc
# echo 'eval "$(rbenv init -)"' >> ~/.zshrc
# source ~/.zshrc

# Install ruby
# ------------

# rbenv install 2.6.6
# rbenv global 2.6.6
# rbenv install 2.7.1
# rbenv global 2.7.1

# --------------------------------------------------------------------------------------------------- #

# Ruby Version Manager (RVM)
# ==========================

# Install Dependencies
# --------------------

# sudo apt install -y \
#   g++ \
#   gcc \
#   autoconf \
#   automake \
#   bison \
#   libc6-dev \
#   libffi-dev \
#   libgdbm-dev \
#   libncurses5-dev \
#   libsqlite3-dev \
#   libtool \
#   libyaml-dev \
#   make \
#   pkg-config \
#   sqlite3 \
#   zlib1g-dev \
#   libgmp-dev \
#   libreadline-dev \
#   libssl-dev

# gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
# OR:
# gpg2 --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB

# Install RVM
# -----------

# Install RVM with default ruby
# curl -sSL https://get.rvm.io | bash -s stable

# Install RVM with default Ruby and Rails
# curl -sSL https://get.rvm.io | bash -s stable --rails

# Activate RVM
# ------------

# source ~/.rvm/scripts/rvm

# Install Ruby
# ------------

# rvm install 2.7.1
# rvm use 2.7.1 --default

# --------------------------------------------------------------------------------------------------- #

# EOF #
