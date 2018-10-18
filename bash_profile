if [ !`command -p brew >/dev/null 2>&1` ]; then
    export PATH="/usr/local/bin:~/.bin:$PATH"
else
    export PATH="$HOME/.bin:$PATH"
fi

if [ -f "$HOME/.bin/ssh-agent.sh" ]; then
    source $HOME/.bin/ssh-agent.sh
fi

if [[ -f "$HOME/.bin/screen-agent.sh" && ! `hash screen 2>&1 /dev/null` ]]; then
    bash $HOME/.bin/screen-agent.sh
fi

if [ -f "$HOME/.ssh/environment" ]; then
    source $HOME/.ssh/environment > /dev/null
fi

if [[ $SSH_TTY && ! $WINDOW  && ! `hash screen 2>&1 /dev/null` ]]; then
    SCREENLIST=`screen -ls | grep 'Attached'`
    if [ $? -eq "0" ]; then 
        echo -e "Screen is already running and attached:\n ${SCREENLIST}"
    else                                
        screen -U -R
    fi                                                     
fi   

if [ -f $HOME/.bashrc ]; then
        source $HOME/.bashrc 
fi

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
