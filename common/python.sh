#!/bin/bash

# ---------------- #
# common/python.sh #
# ---------------- #

# Bash script used to install Python version manager along with both
# Python2 and Python3, and come useful pip packages.

# --------------------------------------------------------------------------------------------------- #

# Python Version Manager (pyenv)
# ==============================

# TODO: Update pyenv if already installed

git clone https://github.com/pyenv/pyenv.git ~/.pyenv
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> ~/.bashrc

# Restart Shell
exec "$SHELL"

# Install Dependencies
# --------------------

sudo apt install --no-install-recommends -y \
  make \
  build-essential \
  libssl-dev \
  zlib1g-dev \
  libbz2-dev \
  libreadline-dev \
  libsqlite3-dev \
  llvm \
  libncurses5-dev \
  xz-utils \
  tk-dev \
  libxml2-dev \
  libxmlsec1-dev \
  libffi-dev \
  liblzma-dev

# Install Python2
# ---------------

pyenv install 2.7.18

# Install Python3
# ---------------

pyenv install 3.8.5

# Set Global Python Versions
# --------------------------

pyenv global 3.8.5 2.7.18 system

pyenv rehash

# Python2 Installs
# ================

# sudo apt install python2
# sudo apt install python-pip

python2 -m pip install --upgrade \
  pip \
  setuptools \
  wheel \
  neovim \
  virtualenv

# Python3 Installs
# ================

# sudo apt install python3
# sudo apt install python3-pip

python3 -m pip install --upgrade \
  pip \
  setuptools \
  wheel \
  neovim \
  thefuck

# --------------------------------------------------------------------------------------------------- #

# EOF #
