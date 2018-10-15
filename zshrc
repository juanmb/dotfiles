# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"
DEFAULT_USER="juan"
WORKON_HOME=$HOME/work/virtualenvs

alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias pp="python -m json.tool"	# pretty print json
alias t="todo.sh" 		# todo.txt
pcapture() { cat "$*" | zlib-flate -uncompress | pp; }

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
plugins=(wd git golang colored-man pass virtualenvwrapper kubectl)

source $ZSH/oh-my-zsh.sh

# Go paths
#GOVERSION="1.5.4"
GOVERSION="1.10.3"
export GOROOT="/usr/local/go-${GOVERSION}"
export GOPATH="${HOME}/work/go-${GOVERSION}"

export PATH="$PATH:${HOME}/.local/bin:$GOROOT/bin:$GOPATH/bin:${HOME}/.node_modules/bin"
export PATH="$PATH:/opt/Logic"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
export EDITOR='vim'

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Disable the default virtualenv prompt
# and show the one defined by the theme
export VIRTUAL_ENV_DISABLE_PROMPT='1'

# Base16 shell colors
BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"
base16_default-dark

# Fix tmux colors
alias tmux='TERM=screen-256color-bce tmux'
#export TERM=screen-256color-bce

watch() { while inotifywait --exclude .swp -e modify -r .; do $@; done; }

# Arduino-Makefile configuration
export ARDUINO_DIR="/opt/arduino-1.8.5"

export KOPS_STATE_STORE=s3://clusters.dev.twave.io
