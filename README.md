Install system packages
=======================
This line installs (in Debian/Ubuntu) some of the most essential packages I use:

```
sudo apt-get install git zsh tmux htop ranger curl vim exuberant-ctags
build-essential chromium-browser nautilus-dropbox pass openvpn
silversearcher-ag
```

Install powerline globally:

```
sudo pip install git+git://github.com/Lokaltog/powerline
```

Python development
==================
`python-pip python-virtualenv python-tox python-flake8 python-dev ipython
python-numpy python-scipy`

`sudo pip install virtualenvwrapper`

Patched fonts for powerline
===========================
This font is neccesary for vim-airline and some oh-my-zsh themes.

Download [this font](https://github.com/powerline/fonts/blob/master/DejaVuSansMono/DejaVu%20Sans%20Mono%20for%20Powerline.ttf?raw=true).

* `mkdir .fonts`

Move the downloaded font to `~/.fonts`.

* `fc-cache -vf ~/.fonts`

Change the font in your terminal emulator to *DejaVu Sans Mono for Powerline*, 10px.

ZSH
===
Oh-my-zsh:
* `curl -L http://install.ohmyz.sh | sh`
* Change the default shell with `chsh` selecting `/bin/zsh`

Color scheme:
* `git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell`

Install my dotfiles
===================
* `git clone https://github.com/juanmb/dotfiles.git ~/.dotfiles`
* `~/.mksymlinks.sh`

Install Gnome Encfs Manager
===========================
Encfs is a great tool for encrypting a folder which contains confidential data
and has to be stored in a non-trusted storage media (eg. Dropbox).

```
sudo add-apt-repository ppa:gencfsm && sudo apt-get update && sudo apt-get -y install gnome-encfs-manager
```

Vim
===
* `git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim`
* In vim, execute `:PluginInstall`

MPD
===
Only for reference. I don't use it (yet).

Follow [this tutorial](https://help.ubuntu.com/community/MPD).
The default music folder is `/var/lib/mpd/music`.

This [Python script](http://www.webupd8.org/2011/02/recursively-download-cover-art-for-all.html)
recursively downloads album art to each album folder.
