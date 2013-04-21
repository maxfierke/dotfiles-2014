#!/bin/sh
# Places softlinks to dotfiles in user's home
ln -s .bashrc $HOME/.bashrc
ln -s .vimrc $HOME/.vimrc
ln -s .vim $HOME/.vim
mkdir -p $HOME/.config/fish/
ln -s config.fish $HOME/.config/fish/config.fish

