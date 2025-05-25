export ZSH="$HOME/.oh-my-zsh"


HISTSIZE=1000000000
SAVEHIST=HISTSIZE
HISTFILE=~/.zsh_history


plugins=(
  zsh-autosuggestions 
  zsh-syntax-highlighting
)

(( ${+ZSH_HIGHLIGHT_STYLES} )) || typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[path]=none
ZSH_HIGHLIGHT_STYLES[path_pathseparator]=none
ZSH_HIGHLIGHT_STYLES[path_prefix]=none
ZSH_HIGHLIGHT_STYLES[path_prefix_pathseparator]=none
ZSH_HIGHLIGHT_STYLES[precommand]=none

bindkey '^y' autosuggest-accept

source $ZSH/oh-my-zsh.sh

export PATH="$PATH:/opt/nvim-linux64/bin"
export PATH="/home/linuxbrew/.linuxbrew/opt/node@22/bin:$PATH"

export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
eval "$(starship init zsh)"
eval "$(zoxide init --cmd cd zsh)"
