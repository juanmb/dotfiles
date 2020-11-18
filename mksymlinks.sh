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

# Define here the files to link
makesymlink $DIR/zshrc $HOME/.zshrc
#makesymlink $DIR/vimrc $HOME/.vimrc
makesymlink $DIR/init.vim $HOME/.config/nvim/init.vim
makesymlink $DIR/tmux.conf $HOME/.byobu/.tmux.conf
makesymlink $DIR/keybindings.tmux $HOME/.byobu/keybindings.tmux
makesymlink $DIR/init.vim $HOME/.config/nvim/init.vim
#makesymlink $DIR/vimrc $HOME/.vimrc
