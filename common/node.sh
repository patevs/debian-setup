#!/bin/bash

# -------------- #
# common/node.sh #
# -------------- #

# Bash script used to install Node version manager along with both
# NodeJS LTS and latest npm, and come useful npm global modules.

# --------------------------------------------------------------------------------------------------- #

# Install Node Version Manager (NVM)
# ----------------------------------

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash

# Previous node version
# previous-node=$(nvm current)

# Install NodeJS LTS and NPM
# --------------------------

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

# EOF #
