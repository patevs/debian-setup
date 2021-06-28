#!/bin/bash

# setup-debian.sh
# ---------------

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

# WSL Utilities
# =============

# sudo apt install ubuntu-wsl
# sudo apt install xubuntu-desktop

# --------------------------------------------------------------------------------------------------- #

# System Utilities
# ================

# sudo apt install software-properties-common

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

# sudo add-apt-repository ppa:mmstick76/alacritty
# sudo apt install alacritty

sudo apt install gnome-terminal
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

# Web Browsers
# ------------

sudo apt install -y firefox

# VNC Server
# ----------

sudo apt install -y \
  realvnc-vnc-server \
  realvnc-vnc-viewer

# VSCode
# ------

sudo snap install code --classic

# wget https://packagecloud.io/headmelted/codebuilds/gpgkey -O - | sudo apt-key add -
# curl -L https://raw.githubusercontent.com/headmelted/codebuilds/master/docs/installers/apt.sh | sudo bash
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

# Bat
# ---

# curl -L https://github.com/sharkdp/bat/releases/download/v0.15.4/bat_0.15.4_armhf.deb -o bat_0.15.4_armhf.deb
# sudo dpkg -i bat_0.15.4_armhf.deb
# rm bat_0.15.4_armhf.deb

# LSDeluxe (LSD)
# --------------

# sudo snap install lsd

# TODO: Dynamically download latest version
# curl -L https://github.com/Peltoche/lsd/releases/download/0.17.0/lsd_0.17.0_amd64.deb -o lsd_0.17.0_amd64.deb
# sudo dpkg -i lsd_0.17.0_amd64.deb
# rm lsd_0.17.0_amd64.deb

# https://gist.github.com/steinwaywhw/a4cd19cda655b8249d908261a62687f8
# curl -s https://api.github.com/repos/jgm/pandoc/releases/latest \
# | grep "browser_download_url.*deb" \
# | cut -d : -f 2,3 \
# | tr -d \" \
# | wget -qi -

# curl -sL https://github.com/user-or-org/repo/archive/sha1-or-ref.tar.gz

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

sudo apt install openjdk-8-jdk

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

# Homebrew Installs
# =================

# Install Homebrew
# /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Install the Homebrew dependencies
# sudo apt-get install build-essential

# Configure Homebrew in your .profile by running
# echo 'eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)' >> /home/pat/.profile

# Add Homebrew to your PATH
# eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)

# Install GCC
# brew install gcc

# --------------------------------------------------------------------------------------------------- #

# EOF #
