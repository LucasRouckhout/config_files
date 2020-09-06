source ~/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle cargo
antigen bundle helm
antigen bundle kubectl

# Syntax and auto suggest
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme af-magic

# Dir colors
test -r "~/.dir_colors" && eval $(dircolors ~/.dir_colors)

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

# Tell Antigen that you're done.
antigen apply



