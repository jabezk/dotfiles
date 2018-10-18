setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="/usr/local/bin:$PATH"

if [ -d '/opt/puppetlabs/pdk/bin' ]; then
    path+='/opt/puppetlabs/pdk/bin'
fi

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
ZSH_THEME="powerlevel9k/powerlevel9k"

# disable setting the terminal title
DISABLE_AUTO_TITLE="true"

# disable autocorrection
ENABLE_CORRECTION="false"

# show progress while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Yay plugins!
plugins=( git ssh-agent tmux vagrant vi-mode )

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# setting the terminal type for tmux
export TERM='xterm-256color'

# tmux
export ZSH_TMUX_AUTOSTART=true
export ZSH_TMUX_AUTOSTART_ONCE=true
export ZSH_TMUX_AUTOCONNECT=true
export ZSH_TMUX_AUTOQUIT=false

# powerline
export POWERLEVEL9K_SHORTEN_DIR_LENGTH='1'

# load oh-my-zsh
source $ZSH/oh-my-zsh.sh

# User configuration
# man pages
export MANPATH="/usr/local/man:$MANPATH"

# preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='mvim'
 fi

# Set personal aliases
export PROJECT_DIR="$HOME/Documents/Projects"
alias cdp="cd $PROJECT_DIR"
