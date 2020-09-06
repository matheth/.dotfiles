alias aliases="cat ~/.bash_aliases"

# ls aliases
alias ll="ls -l"
alias la="ls -lah"

# some cd aliases
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# remove dir
alias rmd="rm -rf"

# open pdf
alias open=xdg-open

# find a command in history
alias gh="history|grep"

# compile c++
alias c++="g++ -std=c++11 -g -O2 -Wconversion -Wshadow -Wall -Wextra -D_GLIBCXX_DEBUG -c" 

# git related aliases
alias gss="git status"
alias gc="git commit "
alias gcm="git commit -m "
alias ga="git add "
alias gpll="git pull"
alias gpss="git push"
alias gps="git push"
alias grm="git rm --cached "
alias gg="git graph"
