shopt -s expand_aliases

alias ll="ls -l"
alias vimdiff="vim -d"
alias pm="cd /i/actuarl/predictive\ modeling/"
alias claim_triage="cd /i/actuarl/predictive\ modeling/claim_triage/"
alias EG="start SEGuide.exe *.egp"
alias eg="start SEGuide.exe *.egp"
alias aym="cd /i/actuarl/field\ products/Acc\ Year\ Monitor/"
alias AYM="cd /i/actuarl/field\ products/Acc\ Year\ Monitor/"



#alias gvim="C:\Program Files (x86)\Vim\vim73\gvim.exe"
#alias git log --allen="git log --pretty=format:'%d %an - %ar : %s' --graph"

#default PS1
#export PS1='\e[0;32m\u@\h \e[0;33m~ \W$(__git_ps1 " (%s)")\e[0m\n$ '


export PS1='\e[0;33m\u@\h \n\e[0;32m\W$(__git_ps1 " (%s)")\e[0m> '

#add gvim to PATH
export PATH=$PATH:"/c/Program Files (x86)/Vim/vim73"

