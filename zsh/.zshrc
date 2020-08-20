# Antigen for installing plugins
source ~/antigen.zsh

antigen use oh-my-zsh

antigen bundle git
antigen bundle cargo
antigen bundle kubectl
antigen bundle helm
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting

autoload -U colors && colors	# Load colors and vcs_info

# Needed for vcs_info
autoload -Uz vcs_info
zstyle ':vcs_info:*' actionformats '%F{5}(%f%s%F{5})%F{3}-%F{5}[%F{2}%b%F{3}|%F{1}%a%F{5}]%f '
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' unstagedstr '*'
zstyle ':vcs_info:*' formats '%F{5}(%f%s%F{5})%F{3}-%F{5}[%F{2}%b%F{5}]%{%F{red}%}%u%{%f%}%f '
zstyle ':vcs_info:(sv[nk]|bzr):*' branchformat '%b%F{1}:%F{3}%r'
precmd() { vcs_info }
setopt PROMPT_SUBST; PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b \$vcs_info_msg_0_"  

# Tell Antigen that you're done.
antigen apply

#bindkey "^[[1;5C" forward-word
#bindkey "^[[1;5D" backward-word

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
alias ll="ls -hAl"
alias l="ls -hal"

# Export statements
export PATH="~/go/bin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/opt/llvm/bin:$PATH"
