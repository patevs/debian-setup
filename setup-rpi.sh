#!/bin/bash

# ------------ #
# setup-rpi.sh #
# ------------ #

# TODO: Ensure running as sudo

# --------------------------------------------------------------------------------------------------- #

echo '' # new line

# Ensure we are running on Linux
if [[ "$OSTYPE" != "linux-gnu"* ]]; then
  echo 'Error: This script can only be run on Linux systems. Exiting...' >&2
  exit 1
fi

# Ensure curl command exists
if ! [ -x "$(command -v curl)" ]; then
  # echo 'Error: curl is not installed. Exiting...' >&2
  echo 'Error: curl is not installed. Installing now...' >&2
  sudo apt install curl
  # exit 2
fi

# Ensure wget command exists
if ! [ -x "$(command -v wget)" ]; then
  # echo 'Error: wget is not installed. Exiting...' >&2
  echo 'Error: wget is not installed. Installing now...' >&2
  sudo apt install wget
  # exit 3
fi

# --------------------------------------------------------------------------------------------------- #

# System Upgrade
# ==============

sudo apt update
sudo apt upgrade -y

# --------------------------------------------------------------------------------------------------- #

# System Utilities
# ================

# Snap
# ----

sudo apt install -y snapd

# sudo snap install hello-world
# hello-world

# Window Manager
# --------------

# sudo apt install dwm

# Shell and Terminal
# ------------------

# sudo apt install gnome-terminal
# sudo apt install stterm
sudo apt install terminator

# sudo apt install zsh
# Set zsh as default shell
# Note that this will not work if Zsh is not in your authorized shells list (/etc/shells)
# chsh -s $(which zsh)

# oh-my-zsh
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# --------------------------------------------------------------------------------------------------- #

# Fonts
# =====

mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts

# Hack NF
# -------

curl -fLo "Hack Regular Nerd Font Complete.otf" \
  https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/Hack/Regular/complete/Hack%20Regular%20Nerd%20Font%20Complete.ttf

# --------------------------------------------------------------------------------------------------- #

# Applications
# ============

# sudo apt install -y firefox

# VNC Server
# ----------

sudo apt install -y \
  realvnc-vnc-server \
  realvnc-vnc-viewer

# VSCode
# ------

# sudo snap install code --classic

wget https://packagecloud.io/headmelted/codebuilds/gpgkey -O - | sudo apt-key add -
curl -L https://raw.githubusercontent.com/headmelted/codebuilds/master/docs/installers/apt.sh | sudo bash
# OR:
# . <( wget -O - https://code.headmelted.com/installers/apt.sh )

# --------------------------------------------------------------------------------------------------- #

# Developer Tools
# ===============

sudo apt install -y \
  bash-completion \
  git \
  hub \
  jq \
  neofetch \
  neovim \
  ripgrep

# --------------------------------------------------------------------------------------------------- #

# Go Lang
# =======

sudo snap install --classic go

# sudo add-apt-repository ppa:longsleep/golang-backports
# sudo apt update
# sudo apt install golang-go

# Go Installs
# -----------

go get -u github.com/xxxserxxx/gotop/cmd/gotop

# --------------------------------------------------------------------------------------------------- #

# Java 8
# ======

# sudo apt install openjdk-8-jdk

# --------------------------------------------------------------------------------------------------- #

# NodeJS Installs
# ===============

bash common/node.sh

# --------------------------------------------------------------------------------------------------- #

# Yarn Installs
# =============

bash common/yarn.sh

# --------------------------------------------------------------------------------------------------- #

# Perl
# ====

# sudo apt install perl

# --------------------------------------------------------------------------------------------------- #

# Python Installs
# ===============

bash common/python.sh

# --------------------------------------------------------------------------------------------------- #

# Ruby Installs
# =============

bash common/ruby.sh

# --------------------------------------------------------------------------------------------------- #

# Rust Installs
# =============

bash common/rust.sh

# --------------------------------------------------------------------------------------------------- #

# EOF #
