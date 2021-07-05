[ -n "$PS1" ] && source ~/.bash_profile;
export PYTHONPATH="${PYTHONPATH}:/home/matheth/.local/bin"
export PATH=$PATH:/usr/bin
export PATH=$PATH:/snap/bin
export PATH=/home/matheth/Library/Python/3.8/bin:$PATH


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
