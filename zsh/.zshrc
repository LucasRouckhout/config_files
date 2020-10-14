source ~/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Syntax and auto suggest
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting

antigen bundle git
antigen bundle cargo
antigen bundle ubuntu
antigen bundle docker
antigen bundle python

# Load the theme.
antigen theme sonicradish

plugins=(kubectl
	helm)

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='vim'
fi

# Aliases
alias vim="nvim"
alias ll="ls -hAl"
alias l="ls -hal"

# Export statements
export PATH="~/go/bin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/opt/llvm/bin:$PATH"
export PATH=$HOME/.local/bin:$PATH

# Tell Antigen that you're done.
antigen apply
