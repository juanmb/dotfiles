Install system packages
=======================
Some of the packages that I use (Debian/Ubuntu/Mint...).

`sudo apt-get install git zsh htop ranger curl vim vim-gnome exuberant-ctags
build-essential chromium-browser nautilus-dropbox pass openvpn
python-pip python-virtualenv python-tox python-flake8 python-dev ipython`

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

Vim
===
* `git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim`
* In vim, execute `:PluginInstall`

MPD
===
Only for reference.

Follow [this tutorial](https://help.ubuntu.com/community/MPD).
The default music folder is `/var/lib/mpd/music`.

This [Python script](http://www.webupd8.org/2011/02/recursively-download-cover-art-for-all.html)
recursively downloads album art to each album folder.
