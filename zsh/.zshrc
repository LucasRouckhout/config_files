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

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/lucas/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/lucas/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/lucas/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/lucas/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

