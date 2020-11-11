alias aliases="vim ~/.bash_aliases"
alias functions="vim ~/.bash_functions"

# ls 
alias ll="ls -l"
alias la="ls -lah"

# cd 
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias cdD="cd ~/Desktop"

# remove dir
alias rmd="rm -rf"

# default open 
alias open=xdg-open

# find a command in history
alias gh="history|grep"

# compile c++
alias c++="g++ -std=c++11 -g -O2 -Wconversion -Wshadow -Wall -Wextra -D_GLIBCXX_DEBUG -c" 

# find remaping
alias find="find . -name "

# valgrind remapping
alias valgrind="valgrind --leak-check=full "

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
alias gai="git add -i "
alias gd="git diff"
alias gd1="gd HEAD~1"
alias gd2="gd HEAD~2"
alias gd3="gd HEAD~3"
alias gcl="git clone"

# cd into current uba semester folder
alias cduba="cd ~/Desktop/UBA/2020/2C"
