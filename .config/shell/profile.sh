if [[ -n "$PS1" ]] && [[ -z "$TMUX" ]] && [[ -n "$SSH_CONNECTION" ]]; then
  tmux attach-session -t ssh_tmux || tmux new-session -s ssh_tmux
fi

source $SHELL_CONFIG/aliases.sh
source $SHELL_CONFIG/path.sh
source $SHELL_CONFIG/functions.sh

export MANPATH="/usr/local/man:$MANPATH"

export FZF_DEFAULT_COMMAND='fd -E .git -E node_modules'
# cool command but barely use
# [ -z "$(command -v thefuck)" ] || eval $(thefuck --alias)


export HISTSIZE=1000000
export HISTFILESIZE=1000000
export HISTCONTROL=ignoredups
setopt APPEND_HISTORY

