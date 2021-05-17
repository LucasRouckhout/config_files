# Path to your oh-my-zsh installation.
export ZSH="/home/lucas/.oh-my-zsh"

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

# Pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git cargo docker python kubectl helm zsh-autosuggestions ansible golang ansible pyenv)

source $ZSH/oh-my-zsh.sh

# User configuration
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='vim'
fi

# Aliases
alias vim="nvim"
alias ll="ls -hAl"
alias l="ls -hal"

# Export statements for PATH
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/opt/llvm/bin:$PATH"
export PATH=$HOME/.local/bin:$PATH
export PATH="/usr/bin:$PATH"

# Set GOPATH
export GOPATH=$HOME/go
export PATH="$GOPATH/bin:$PATH"

