#!/bin/sh
# -- Install

START_TIME=$SECONDS

# CWD
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo ""
echo ""
echo ""
echo "----- Link dotfiles -----"

ln -sfv "$DOTFILES_DIR/zsh/zshrc" ~/.zshrc
ln -sfv "$DOTFILES_DIR/editorconfig/editorconfig" ~/.editorconfig
ln -sfv "$DOTFILES_DIR/git/gitconfig" ~/.gitconfig
ln -sfv "$DOTFILES_DIR/git/gitignore_global" ~/.gitignore_global
ln -sfv "$DOTFILES_DIR/curl/curlrc" ~/.curlrc
ln -sfv "$DOTFILES_DIR/wget/wgetrc" ~/.wgetrc
ln -sfv "$DOTFILES_DIR/atom" ~/.atom

ELAPSED_TIME=$(($SECONDS - $START_TIME))

echo ""
echo ""
echo ""
echo "-------------------------"
echo "----- Install ended -----"
echo "-------------------------"
echo "Duration : $(($ELAPSED_TIME/60)) min $(($ELAPSED_TIME%60)) sec"
echo "-------------------------"
