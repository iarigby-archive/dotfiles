export ZSH="$HOME/.oh-my-zsh"

# ZSH_THEME="refined"
# ZSH_THEME="bureau"
# ZSH_THEME="bureau"
ZSH_THEME="avit"

# git clone https://github.com/jeffreytse/zsh-vi-mode \
#  $HOME/.oh-my-zsh/custom/plugins/zsh-vi-mode
# source ~/.zplug/init.zsh
plugins=(git tmux yarn)
# zplug "b4b4r07/enhancd", use:init.sh
# LATER not working
source $HOME/.shell_config
ZSH_CUSTOM=$SHELL_CONFIG/zsh/

ZSH_DISABLE_COMPFIX=true
# ZVM_CURSOR_STYLE_ENABLED=false

source $ZSH/oh-my-zsh.sh

source $SHELL_CONFIG/profile.sh
source $ZSH_CUSTOM/find_history.sh

# source $ZSH_CUSTOM/enhancd/init.sh
# ENHANCD_FILTER=fzf; export ENHANCD_FILTER
# eval "$(fasd --init auto)"

# ZVM_INSERT_MODE_CURSOR=$ZVM_CURSOR_BLINKING_UNDERLINE
# ZVM_NORMAL_MODE_CURSOR=$ZVM_CURSOR_UNDERLINE


test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

