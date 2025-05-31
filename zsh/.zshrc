export ZSH="$HOME/.oh-my-zsh"

plugins=(
  zsh-autosuggestions 
  zsh-syntax-highlighting
)

HISTSIZE=1000000000
SAVEHIST=HISTSIZE
HISTFILE=~/.zsh_history

(( ${+ZSH_HIGHLIGHT_STYLES} )) || typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[path]=none
ZSH_HIGHLIGHT_STYLES[path_pathseparator]=none
ZSH_HIGHLIGHT_STYLES[path_prefix]=none
ZSH_HIGHLIGHT_STYLES[path_prefix_pathseparator]=none
ZSH_HIGHLIGHT_STYLES[precommand]=none

bindkey '^y' autosuggest-accept

source $ZSH/oh-my-zsh.sh

export FZF_DEFAULT_OPTS="
--layout=reverse
--pointer='█'
--scrollbar='▌'
--color=hl:#f3be7c
--color=bg:-1
--color=gutter:-1
--color=bg+:#252530
--color=fg+:#aeaed1
--color=hl+:#f3be7c
--color=border:#606079
--color=prompt:#bb9dbd
--color=query:#aeaed1:bold
--color=pointer:#aeaed1
--color=scrollbar:#aeaed1
--color=info:#f3be7c
--color=spinner:#7fa563
"

export PATH="$PATH:/opt/nvim-linux64/bin"
export PATH="/home/linuxbrew/.linuxbrew/opt/node@22/bin:$PATH"

export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
eval "$(starship init zsh)"
eval "$(zoxide init --cmd cd zsh)"

