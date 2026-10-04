#!/bin/bash

# Neovim setup script
# This script sets up the neovim configuration in the current directory

echo "Setting up Neovim configuration..."

# Create the necessary directories if they don't exist
mkdir -p ~/.config/nvim/lua/config

# Copy all configuration files to the standard location
cp init.lua ~/.config/nvim/
cp -r lua/* ~/.config/nvim/lua/

# Install lazy.nvim if not already installed
 if [ ! -d "~/.local/share/nvim/lazy/lazy.nvim" ]; then
    echo "Installing lazy.nvim..."
    git clone https://github.com/folke/lazy.nvim.git ~/.local/share/nvim/lazy/lazy.nvim
fi

echo "Neovim configuration setup complete!"
echo "Please restart Neovim to apply changes."
