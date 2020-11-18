Essential packages
==================

This line installs (in Debian/Ubuntu) some of the most essential packages I use:

    sudo apt-get install git zsh byobu curl neovim exuberant-ctags build-essential cmake pass encfs python3-dev python3-pip

Other very useful tools:
 - [htop](https://htop.dev/)
 - [bat](https://github.com/sharkdp/bat)
 - [ranger](https://ranger.github.io/)
 - [git-secret](https://git-secret.io/)
 - [The Silver Searcher](https://github.com/ggreer/the_silver_searcher)

Install them all with:

    sudo apt-get install htop bat ranger git-secret silversearcher-ag

Some Python packages:

    pip3 install --user virtualenvwrapper numpy ipython pre-commit

Shell configuration
===================

Install powerline globally:

    sudo pip3 install git+git://github.com/Lokaltog/powerline


Patched fonts for powerline
---------------------------

Clone [this repo](https://github.com/powerline/fonts):

    git clone https://github.com/powerline/fonts

Execute the `install.sh` script and select one of the installed fonts in your
terminal emulator settings.


My dotfiles
===========
Clone the repository from GitHub and execute the installation script:

    git clone https://github.com/juanmb/dotfiles.git ~/.dotfiles
    .dotfiles/mksymlinks.sh

ZSH
---
Install Oh-my-zsh:

    curl -L http://install.ohmyz.sh | sh

Change the default shell with `chsh` selecting `/bin/zsh`

Color scheme:

    git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell


Byobu
-----
Configure the terminal to run `/usr/bin/byobu` instead of the default shell.


Neovim
======
[Installing plugins with vim-plug](https://stsewd.dev/es/posts/neovim-plugins/)


Non-CLI packages
================

    sudo apt install nautilus-dropbox network-manager-openvpn-gnome


Gnome Encfs Manager
-------------------

Encfs is a great tool for encrypting a folder which contains confidential data
that has to be stored in a non-trusted storage media (eg. Dropbox).

    sudo add-apt-repository ppa:gencfsm && sudo apt-get update && sudo apt-get -y install gnome-encfs-manager
