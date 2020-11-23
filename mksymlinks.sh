#!/bin/bash

##############################################################################
# This script creates symlinks from the home directory to any desired dotfiles
# in ~/.dotfiles
##############################################################################

makesymlink() {
	if [ -e $2 ]; then
		echo "Backing up old $2 to $2.bak"
		mv -f $2 $2.bak
	fi
	echo "Creating symlink $1 -> $2"
	mkdir -p $(dirname $2)
	ln -s $1 $2
}

# Dotfiles directory
DIR=$HOME/.dotfiles

# Define here the files to be tracked:

# zsh
makesymlink $DIR/zshrc $HOME/.zshrc

# byobu and tmux
makesymlink $DIR/tmux.conf $HOME/.byobu/.tmux.conf
makesymlink $DIR/keybindings.tmux $HOME/.byobu/keybindings.tmux
makesymlink $DIR/profile.tmux $HOME/.byobu/profile.tmux

# vim and neovim
#makesymlink $DIR/vimrc $HOME/.vimrc
makesymlink $DIR/init_spacevim.vim $HOME/.config/nvim/init.vim

# spacevim
makesymlink $DIR/init.toml $HOME/.SpaceVim.d/init.toml
makesymlink $DIR/myspacevim.vim $HOME/.SpaceVim.d/autoload/myspacevim.vim
