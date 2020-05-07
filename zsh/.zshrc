# Antigen for installing plugins
source $HOME/antigen.zsh

antigen use oh-my-zsh

antigen bundle git
antigen bundle cargo
antigen bundle kubectl
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
#antigen theme fishy
#antigen theme typewritten
antigen theme pygmalion

# Tell Antigen that you're done.
antigen apply

# Path to your oh-my-zsh installation.
export ZSH="/Users/lucasrouckhout/.oh-my-zsh"

plugins=(
	git
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
alias ll="ls -Al"
alias l="ls -al"
