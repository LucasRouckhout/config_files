# Antigen for installing plugins
source $HOME/antigen.zsh

antigen use oh-my-zsh

antigen bundle git
antigen bundle cargo
antigen bundle kubectl
antigen bundle helm
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting

#autoload -U colors && colors	# Load colors
#PROMPT="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "
ZSH_THEME=avit
# Tell Antigen that you're done.
antigen apply

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

plugins=(
	git
	cargo
	kubectl
	helm
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

# Export statements
export PATH="/usr/local/opt/llvm/bin:$PATH"
export PATH="/Users/lucas/Library/Python/3.7/bin:$PATH"
export PATH="/home/lucas/Programs/AndroidStudio/android-studio-ide-193.6626763-linux/android-studio/bin:$PATH"
