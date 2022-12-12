# Oh My Zsh

export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

# Theme

eval "$(starship init zsh)"

# Plugins

plugins=(
  asdf
  docker
  docker-compose
  git
  npm
  ripgrep
  yarn
)

fpath=(${ASDF_DIR}/completions $fpath)
autoload -U compinit && compinit

source /opt/homebrew/opt/asdf/libexec/asdf.sh

# Aliases

alias d="cd ~/Developer/"
alias ls="exa"
alias la="exa -la --git"
alias vim="nvim"
alias clean-desktop="rm -vrf ~/Desktop/*"

# History

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
