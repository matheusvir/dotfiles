#!/bin/bash

# Tmux installation and configuration script for Linux
# This script installs tmux, TPM (Tmux Plugin Manager), and sets up the configuration
# @author: github.com/matheusvir


# Functions to print colored messages
loginfo() {
  local BLUE='\033[1;34m'
  local RESET='\033[0m'
  printf "🔵 ${BLUE}%s${RESET}\n" "$1"
}

logsuccess() {
  local GREEN='\033[1;32m'
  local RESET='\033[0m'
  printf "🟢 ${GREEN}%s${RESET}\n" "$1"
}

logerror() {
  local RED='\033[1;31m'
  local RESET='\033[0m'
  printf "🔴 ${RED}%s${RESET}\n" "$1"
}

# Stop script on error
set -e

# Check if running on Linux
if [ "$(uname -s)" != "Linux" ]; then
    logerror "This script is designed for Linux only."
    exit 1
fi

# Check if running on Ubuntu
if [ -f /etc/os-release ]; then
    . /etc/os-release
    if [ "$ID" != "ubuntu" ]; then
        logerror "This script is designed for Ubuntu. You're running: $PRETTY_NAME"
        logerror "You can manually adapt the commands for your distribution."
        exit 1
    fi
fi

# Update system packages
loginfo "Updating system packages..."
sudo apt update -y
sudo apt upgrade -y

# Install tmux
loginfo "Installing tmux..."
sudo apt install tmux -y

# Check if tmux was installed successfully
if ! command -v tmux &> /dev/null; then
    logerror "Failed to install tmux. Please check your system."
    exit 1
fi

logsuccess "Tmux installed successfully!"

# Install TPM (Tmux Plugin Manager)
loginfo "Installing TPM (Tmux Plugin Manager)..."
if [ ! -d "$HOME/.tmux/plugins/tpm" ]; then
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
    logsuccess "TPM installed successfully!"
else
    loginfo "TPM is already installed."
fi

# Create symlink for tmux configuration
loginfo "Creating symlink for tmux configuration..."
# Remove existing config if it exists
rm -f "$HOME/.tmux.conf"
# Create the symlink
ln -sf "$HOME/dotfiles/tmux/.tmux.conf" "$HOME/.tmux.conf"

logsuccess "Symlink created: ~/.tmux.conf -> ~/dotfiles/tmux/.tmux.conf"

# Final instructions
echo ""
echo -e "\033[1;33m=== MANUAL STEPS REQUIRED ===\033[0m"
echo ""
echo "1. Start tmux by running: tmux"
echo "2. Inside tmux, press: Ctrl+b + Shift+I (capital I)"
echo "   This will install all the plugins defined in your .tmux.conf"
echo "3. Wait for the plugins to install"
echo "4. Exit and restart tmux to apply all changes"
echo ""
echo -e "\033[1;32mPlugins that will be installed:\033[0m"
echo "  - tmux-sensible (sensible default settings)"
echo "  - tmux-resurrect (save and restore tmux sessions)"
echo "  - tmux-continuum (automatic session saving every 5 minutes)"
echo ""
echo -e "\033[1;33mNote:\033[0m The copy-to-clipboard feature (y key) uses 'pbcopy'"
echo "which is macOS specific. You may need to replace it with 'xclip'"
echo "or 'xsel' in your .tmux.conf for Linux."
echo ""
logsuccess "Tmux setup completed!"
