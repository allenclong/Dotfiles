#popular alias
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias ls='ls --color=auto'
alias ll='ls -lh'
# sort directory by size
alias lt='ls --human-readable --size -1 -S --classify'
# find mounted drives
alias mnt="mount | awk -F' ' '{ printf \"%s\t%s\n\",\$1,\$3; }' | column -t | egrep ^/dev/ | sort"
alias ld='ls -d */'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
#grep history
alias gh='history|grep'
# get where you left off
alias left='ls -t -1'
alias count='find . -type f | wc -l'
# cp (copy) with a progress bar
alias cpv='rsync -ah --info=progress2'
# find top level of git repo
alias startgit='cd `git rev-parse --show-toplevel`
alias cg='cd `git rev-parse --show-toplevel`




