# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"
DEFAULT_USER="juan"
WORKON_HOME=$HOME/.virtualenvs

alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to disable command auto-correction.
# DISABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(wd git golang dotenv pass virtualenv virtualenvwrapper)

source $ZSH/oh-my-zsh.sh

# Go environment
export GOROOT="/usr/local/go"
export GOPATH="${HOME}/go"
export GOPRIVATE="github.com/twave-io/*"

export PATH="$PATH:${HOME}/.local/bin:$GOROOT/bin:$GOPATH/bin:${HOME}/.node_modules/bin:/usr/local/tinygo/bin"

# Preferred editor for local and remote sessions
export EDITOR='vim'

# Disable the default virtualenv prompt
# and show the one defined by the theme
export VIRTUAL_ENV_DISABLE_PROMPT='1'

# Base16 shell colors
BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"
base16_default-dark
#base16_oceanicnext
#base16_darktooth
#base16_gruvbox-dark-medium

# Fix tmux colors
alias tmux='TERM=screen-256color-bce tmux'

# Custom commands
watch() { while inotifywait --exclude .swp -e modify -r .; do $@; done; }

# pcapture() { cat "$*" | zlib-flate -uncompress | pp; }

#alias t="todo.sh" 			# todo.txt
alias ls="ls --group-directories-first --color -h"
alias jspp="python -m json.tool"	# pretty print json
alias shelob="go run github.com/twave-io/shelob/cmd/shelob"
alias ipython=ipython3
alias cat=batcat

#alias swagger='docker run --rm -it -e GOPATH=$GOPATH:/go -v $HOME:$HOME -w $(pwd) quay.io/goswagger/swagger'

# Arduino-Makefile configuration
export ARDUINO_DIR="/opt/arduino-1.8.9"

eval "$(hub alias -s)"
