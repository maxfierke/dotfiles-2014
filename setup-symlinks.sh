#!/bin/sh
# Places softlinks to dotfiles in user's home
ln -s `pwd`/.bashrc $HOME/.bashrc
ln -s `pwd`/.vimrc $HOME/.vimrc
ln -s `pwd`/.vim $HOME/.vim
mkdir -p $HOME/.config/fish/
ln -s `pwd`/config.fish $HOME/.config/fish/config.fish

