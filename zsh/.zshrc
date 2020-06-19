# Antigen for installing plugins
source $HOME/antigen.zsh

antigen use oh-my-zsh

antigen bundle git
antigen bundle cargo
antigen bundle kubectl
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting

autoload -U colors && colors	# Load colors
PROMPT="[%n@%M %~]%# "
#PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

# Tell Antigen that you're done.
antigen apply

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

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
export PATH="/usr/local/opt/llvm/bin:$PATH"
export PATH="/Users/lucas/Library/Python/3.7/bin:$PATH"
