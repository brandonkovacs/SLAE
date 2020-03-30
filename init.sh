#!/bin/bash

# Simple script to install course dependencies, a few tools, and setup local environment.

# Install course dependencies
echo "[+] Installing dependencies..."
sudo apt -y update
sudo apt -y install nasm build-essential

# Install extra packages to make life easier
echo "[+] Installing extras..."
sudo apt -y install tmux vim git

# Setup local environment
echo "[+] Setting up local environment..."
./environment/gdbinit.sh
./environment/tmux.conf.sh

echo "[+] Done."
