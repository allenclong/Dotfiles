#popular alias
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
# ls aliases
alias ls='ls --color=auto'
alias ll='ls -lh'
    # sort directory by size
alias lt='ls --human-readable --size -1 -S --classify'
    # get where you left off
alias left='ls -t -1'
# find mounted drives
alias mnt="mount | awk -F' ' '{ printf \"%s\t%s\n\",\$1,\$3; }' | column -t | egrep ^/dev/ | sort"
alias ld='ls -d */'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
# grep aliases
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
#grep history
alias gh='history|grep'
alias count='find . -type f | wc -l'
# cp (copy) with a progress bar
Alias cpv='rsync -ah --info=progress2'
# find top level of git repo
alias startgit='cd git rev-parse --show-toplevel'
alias cg='cd git rev-parse --show-toplevel'
# vim
alias gvim="/c/Program\ Files\ \(x86\)/Vim/vim81/gvim.exe"
alias rst="gvim *.rst &"

alias vimdiff="vim -d"
