export ZSH="/home/ia/.oh-my-zsh"

ZSH_THEME="avit"

plugins=(git tmux yarn)

# LATER not working
source $HOME/.shell_config
ZSH_CUSTOM=$SHELL_CONFIG/zsh/


source $ZSH/oh-my-zsh.sh

source $SHELL_CONFIG/profile.sh
source $ZSH_CUSTOM/find_history.sh
