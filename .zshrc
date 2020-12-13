# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
alias ll='ls -al'
alias gl='cd $(ghq list --full-path | peco)'

## Completion
autoload -U compinit
compinit

## Suggest command
setopt correct

## Use color
setopt prompt_subst

# Ignore duplicate commands
setopt hist_save_no_dups

# Remove duplicate items
typeset -U path cdpath fpath manpath

path=(
    $HOME/bin(N-/)
    /opt/homebrew/bin(N-/)
    /usr/local/bin(N-/)
    /usr/local/sbin(N-/)
    $path
)

# Go
# export GOPATH=$HOME/go
# export PATH=$PATH:$GOPATH/bin

# swiftenv
if which swiftenv > /dev/null; then eval "$(swiftenv init -)"; fi

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

 # arm64/x86_64
export PROMPT="%n@%m(`uname -m`) %1~ %# "
 
