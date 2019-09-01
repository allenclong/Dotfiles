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
# find mounted drives
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
alias cpv='rsync -ah --info=progress2'
# find top level of git repo
alias startgit='cd git rev-parse --show-toplevel'
alias cg='cd git rev-parse --show-toplevel'
# vim
alias gvim="/c/Program\ Files\ \(x86\)/Vim/vim81/gvim.exe"
alias rst="gvim *.rst &"

alias vimdiff="vim -d"

if [ -d /i/advanced\ analytics ]; then
	alias pm="cd /i/advanced\ analytics/projects/"
	alias aa="cd /i/advanced\ analytics/"
	alias dr="cd /i/advanced\ analytics/data\ repository/"
	alias sandbox="cd /i/advanced\ analytics/sandbox/allen/"
	alias ofa="cd /i/advanced\ analytics/projects/underwriting/"
	alias EG="start SEGuide.exe *.egp"
	alias eg="start SEGuide.exe *.egp"
	alias rst="gvim *.rst &"
	alias aym="cd /i/actrl/Products\ and\ Tools/Accident\ Year\ Monitor/"
	alias AYM="cd /i/actrl/Products\ and\ Tools/Accident\ Year\ Monitor/"
	alias macros="cd //fhamisapd01/SAS_Macros/"
	alias tools="cd /i/advanced\ analytics/Tools/"
	alias products="cd /i/actrl/Products\ and\ Tools/"
	alias sched="cd /i/advanced\ analytics/administrative/scheduled\ tasks/"
	alias ap="cd /j/MyAmerisure/ActuarialProducts/"

fi 


	