# pick starting directory
if [ -d /i/advanced\ analytics/ ];
	then cd /i/advanced\ analytics/
fi

# fix domino install
if [ -e /c/users/p010080d/.dominoconfig/install_config.json ];
	then 
		sed -i 's/"S3"/"API"/g' /c/users/p010080d/.dominoconfig/install_config.json
fi
if [ -e /c/users/p010080d.AMERISURE/.dominoconfig/install_config.json ];
	then
		sed -i 's/"S3"/"API"/g' /c/users/p010080d.AMERISURE/.dominoconfig/install_config.json
fi

#add gvim to PATH
#export PATH=$PATH:"/c/Program Files (x86)/Vim/vim73":"//amerisure/root/Actuarl-Undw/Advanced Analytics/Data Repository"

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi


# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize


# git completion
source ~/git-completion.bash

# prompt color and style
source ~/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1



# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi


SSH_ENV=$HOME/.ssh/environment

   

# start the ssh-agent

function start_agent {

    echo "Initializing new SSH agent..."

    # spawn ssh-agent

    /usr/bin/ssh-agent | sed 's/^echo/#echo/' > "${SSH_ENV}"

    echo succeeded

    chmod 600 "${SSH_ENV}"

    . "${SSH_ENV}" > /dev/null

    /usr/bin/ssh-add

}

   

if [ -f "${SSH_ENV}" ]; then

     . "${SSH_ENV}" > /dev/null

     ps -ef | grep ${SSH_AGENT_PID} | grep ssh-agent$ > /dev/null || {

        start_agent;

    }

else

    start_agent;

fi
