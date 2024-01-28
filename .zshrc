### ---- ZSH HOME -----------------------------------
export ZSH=$HOME/.oh-my-zsh


### ---- autocompletions -----------------------------------
fpath=(~/.zsh/site-functions $fpath)
autoload -Uz compinit && compinit

### ---- Completion options and styling -----------------------------------
zstyle ':completion:*' menu select # selectable menu
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]-_}={[:upper:][:lower:]_-}' 'r:|=*' 'l:|=* r:|=*'  # case insensitive completion
zstyle ':completion:*' special-dirs true # Complete . and .. special directories
zstyle ':completion:*' list-colors '' # colorize completion lists
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#) ([0-9a-z-]#)*=01;34=0=01' # colorize kill list
export WORDCHARS=${WORDCHARS//[\/]} # remove / from wordchars so that / is a seperator when deleting complete words

### ---- Source other configs -----------------------------------
# [[ -f $ZSH/config/history.zsh ]] && source $ZSH/config/history.zsh
# [[ -f $ZSH/config/aliases.zsh ]] && source $ZSH/config/aliases.zsh

alias c="code"

### ---- Source plugins -----------------------------------
# [[ -f $ZSH/plugins/plugins.zsh ]] && source $ZSH/plugins/plugins.zsh
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)


### ---- load pyenv ---------
# export PYENV_ROOT="$HOME/.pyenv"
# command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
# eval "$(pyenv init -)"

### add local bin to path
export PATH=$HOME/bin:$PATH
export PATH=$HOME/bin:/snap/bin/:$GOPATH/bin:$PATH


### ---- load sdkman ---------
# export SDKMAN_DIR="$HOME/.sdkman"
# [[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

### ---- Load Starship -----------------------------------
eval "$(starship init zsh)"