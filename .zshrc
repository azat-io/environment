# Oh My Zsh

export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

# Theme

eval "$(starship init zsh)"

# Plugins

plugins=(
  asdf
  git
)

fpath=(${ASDF_DIR}/completions $fpath)
autoload -U compinit && compinit

source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Aliases

alias d="cd ~/Developer/"
alias ls="exa"
alias la="exa -la --git"

# History

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
