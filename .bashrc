#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [ ! -z "$(command -v zsh)" ]
then	
	exec zsh
fi

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

source $HOME/.shell_config
source $SHELL_CONFIG/profile.sh
