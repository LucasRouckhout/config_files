# Antigen for installing plugins
source $HOME/antigen.zsh

antigen use oh-my-zsh


antigen bundle git
antigen bundle cargo
antigen bundle ubuntu
antigen bundle kubectl
antigen bundle zsh-users/zsh-autosuggestions

# Load the theme.
antigen theme fishy
#antigen theme reobin/typewritten typewritten

# Tell Antigen that you're done.
antigen apply

# Path to your oh-my-zsh installation.
export ZSH="/home/lucas/.oh-my-zsh"

# Set the zsh theme:
#ZSH_THEME="typewritten"

plugins=(git
	ubuntu
	cargo
	kubectl
)

source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='vim'
fi

# Aliases
alias vim="nvim"
