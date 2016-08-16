Install system packages
=======================
This line installs (in Debian/Ubuntu) some of the most essential packages I use:

    sudo apt-get install git zsh tmux htop ranger curl vim exuberant-ctags build-essential chromium-browser nautilus-dropbox pass openvpn silversearcher-ag

Install powerline globally:

    sudo pip install git+git://github.com/Lokaltog/powerline


Python development
==================

    python-pip python-virtualenv python-tox python-flake8 python-dev ipython python-numpy python-scipy

    sudo pip install virtualenvwrapper


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


Install my dotfiles
===================

    git clone https://github.com/juanmb/dotfiles.git ~/.dotfiles

    ~/.mksymlinks.sh


Install Gnome Encfs Manager
===========================

Encfs is a great tool for encrypting a folder which contains confidential data
and has to be stored in a non-trusted storage media (eg. Dropbox).

    sudo add-apt-repository ppa:gencfsm && sudo apt-get update && sudo apt-get -y install gnome-encfs-manager


Vim
===

Install Vundle:

    git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

In vim, execute `:PluginInstall`


MPD
===
Only for reference. I don't use it (yet).

Follow [this tutorial](https://help.ubuntu.com/community/MPD).
The default music folder is `/var/lib/mpd/music`.

This [Python script](http://www.webupd8.org/2011/02/recursively-download-cover-art-for-all.html)
recursively downloads album art to each album folder.
