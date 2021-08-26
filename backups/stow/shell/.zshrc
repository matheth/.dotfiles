# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$PATH:/snap/bin
export PATH=/sbin:/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin

# Path to your oh-my-zsh installation.
export ZSH="/home/matheth/.oh-my-zsh"


# Set name of the theme to load 
ZSH_THEME="afowler"

# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(zsh-autosuggestions)

DISABLE_AUTO_UPDATE="true"

source $ZSH/oh-my-zsh.sh

# Load the profile:
source ~/.profile
# for file in ~/.{profile}; do
# 	[ -r "$file" ] && [ -f "$file" ] && source "$file";
# done;
# unset file;

# command not found suggestions
source /etc/zsh_command_not_found

# use hyphen-insensitive completion
HYPHEN_INSENSITIVE="true"

# enable command auto-correction
ENABLE_CORRECTION="true"

# use vim
export VISUAL=vim
export EDITOR="$VISUAL"
export PATH=$PATH:/snap/bin

export PATH=/usr/local/bin:$PATH
