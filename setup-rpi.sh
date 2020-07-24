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

# Node Version Manager (NVM)
# ==========================

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash

# Previous node version
# previous-node=$(nvm current)

# NodeJS LTS and NPM
# ------------------

nvm install --lts --latest-npm

# nvm install --lts --latest-npm --reinstall-packages-from=$(nvm current)
# nvm install --lts --latest-npm --reinstall-packages-from=12.17.0
# nvm reinstall-packages previous-node

# NPM Global Installs
# -------------------

npm install --global \
  add-gitignore \
  check-it-out \
  diff-so-fancy \
  gitmoji-cli \
  david \
  npm-check \
  npm-check-updates \
  ntl \
  licensed \
  neovim \
  gtop \
  wifi-password-cli \
  corona-cli

# --------------------------------------------------------------------------------------------------- #

# Yarn
# ====

curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

sudo apt update
sudo apt install -y yarn

# --------------------------------------------------------------------------------------------------- #

# Perl
# ====

# sudo apt install perl

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

# Ruby Installs
# =============

sudo apt install -y ruby-full

# Ruby Gem Installs
# -----------------

sudo gem update --system
sudo gem update

sudo gem install \
  bundler \
  rails \
  neovim

# --------------------------------------------------------------------------------------------------- #

# Rust Installs
# =============

bash common/rust.sh

# Install Rustup
# --------------

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Active cargo
# ------------

source $HOME/.cargo/env

# Update Rustup
# -------------

rustup self update
rustup update

# Cargo Installs
# --------------

cargo install \
  bat \
  eva \
  lsd \

# cargo install git-delta
# cargo install tokei

# --------------------------------------------------------------------------------------------------- #

# EOF #
