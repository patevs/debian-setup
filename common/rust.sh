#!/bin/bash

# -------------- #
# common/rust.sh #
# -------------- #

# Bash script used to install the rustup toolchain.
# Installs rustup, rust, and cargo, along with some useful cargo packages.

# --------------------------------------------------------------------------------------------------- #

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
