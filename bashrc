if [ -f /etc/bashrc ]; then
    source /etc/bashrc
fi

if [ -f $HOME/.bash_local ]; then
    source $HOME/.bash_local
fi

if [ -f $HOME/.ssh/environment ]; then
    source $HOME/.ssh/environment > /dev/null
fi

if [ -f "$HOME/.rvm/" ]; then
    export PATH="$PATH:$HOME/.rvm/bin"
fi

if [ !`command -p brew >/dev/null 2>&1` ]; then
    export PATH="$PATH:/usr/local/bin"
fi

if [ -f "$HOME/.bin/ssh-agent.sh" ]; then
    source $HOME/.bin/ssh-agent.sh
fi

set -o vi

export EDITOR="vim"
export HISTIGNORE="cd:ls:clear:cls"
export PD="$HOME/documents/projects/"

if [[ !`command -p brew >/dev/null 2>&1` ]]; then
    export PATH="/usr/local/sbin:/usr/local/bin:$HOME/.bin:$PATH"
else
    export PATH="$HOME/.bin:$PATH"
fi

if [ `uname` == 'FreeBSD' -o `uname` == 'Darwin' ]; then
    export CLICOLOR=true
else
    alias ls="ls --color"
fi

alias vi="vim"
alias cls="cd && clear"
alias dir="ls -al"
alias mkdir="mkdir -p"
alias clrhist="history -c && rm ~/.bash_history"
alias cdp="cd $HOME/Documents/projects/"

man() {
    env \
        LESS_TERMCAP_mb=$(printf "\e[1;31m") \
        LESS_TERMCAP_md=$(printf "\e[1;31m") \
        LESS_TERMCAP_me=$(printf "\e[0m") \
        LESS_TERMCAP_se=$(printf "\e[0m") \
        LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
        LESS_TERMCAP_ue=$(printf "\e[0m") \
        LESS_TERMCAP_us=$(printf "\e[1;32m") \
        man "$@"
}
