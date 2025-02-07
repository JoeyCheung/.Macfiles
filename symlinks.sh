#!/bin/bash

# Get dotfiles installation directory
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

ln -sf "$DOTFILES_DIR/.gitconfig" ~
ln -sf "$DOTFILES_DIR/.gitignore_global" ~
ln -sf "$DOTFILES_DIR/.zshrc" ~
ln -sf "$DOTFILES_DIR/.zpreztorc" ~
ln -sf "$DOTFILES_DIR/.zshenv" ~

source ~/.gitconfig
source ~/.gitignore_global
source ~/.zshrc
source ~/.zpreztorc
source ~/.zshenv
