# ZSH BUNDLES
source $HOME/.shell/bundles

# SHELL CONFIG
source $HOME/.sensitive
source $HOME/.shell/options
source $HOME/.shell/path
source $HOME/.shell/managers
source $HOME/.shell/aliases
source $HOME/.shell/functions
source $HOME/.shell/completion

# TERMINAL THEME
# https://github.com/chriskempson/base16-shell
BASE16_SCHEME="twilight"
BASE16_SHELL="$HOME/.config/base16-shell/base16-$BASE16_SCHEME.dark.sh"
source $BASE16_SHELL
export TERM=xterm-256color
export ZSH_THEME="pure"

# TMUX
[[ $- != *i* ]] && return
[[ -z "$TMUX" ]] && exec tmux
