Essential packages
==================

This line installs (in Debian/Ubuntu) some of the most essential packages I use:

    sudo apt-get install git zsh byobu htop ranger curl vim exuberant-ctags build-essential chromium-browser nautilus-dropbox pass openvpn silversearcher-ag

Install some Python packages:

    sudo apt-get install python-pip python-virtualenv python-tox python-flake8 python-dev ipython python-numpy python-scipy
    sudo pip install -U pip
    sudo pip install virtualenvwrapper

Install powerline globally:

    sudo pip install git+git://github.com/Lokaltog/powerline


Patched fonts for powerline
===========================

Clone [this repo](https://github.com/powerline/fonts):

    git clone https://github.com/powerline/fonts

Execute the `install.sh` script and select one of the installed fonts in your
terminal emulator settings.


ZSH
===

Install Oh-my-zsh:

    curl -L http://install.ohmyz.sh | sh

Change the default shell with `chsh` selecting `/bin/zsh`

Color scheme:

    git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell


My dotfiles
===========

Clone the repository from GitHub and execute the installation script:

    git clone https://github.com/juanmb/dotfiles.git ~/.dotfiles
    .dotfiles/mksymlinks.sh


Byobu
=====

Configure the terminal to run `/usr/bin/byobu` instead of the default shell.


Vim
===

Install Vundle:

    git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

In vim, execute `:PluginInstall`


Gnome Encfs Manager
===================

Encfs is a great tool for encrypting a folder which contains confidential data
that has to be stored in a non-trusted storage media (eg. Dropbox).

    sudo add-apt-repository ppa:gencfsm && sudo apt-get update && sudo apt-get -y install gnome-encfs-manager
