# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
alias ll='ls -al'
alias gl='cd $(ghq list --full-path | peco)'

# Completion
autoload -Uz compinit
compinit

# Colors
autoload -Uz colors
colors

# Suggest command
setopt correct

# Expand PROMPT
setopt prompt_subst

# Ignore duplicate commands
setopt hist_save_no_dups

# Remove duplicate items
typeset -U path cdpath fpath manpath

# Case insensitive completion
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# swiftenv
if which swiftenv > /dev/null; then eval "$(swiftenv init -)"; fi

# rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# git
autoload -Uz vcs_info
setopt prompt_subst
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "%F{magenta}!%f"
zstyle ':vcs_info:git:*' unstagedstr "%F{yellow}+%f"
zstyle ':vcs_info:*' formats " %F{white}(%f%F{yellow}%b%f %c%u%F{white})%f "
zstyle ':vcs_info:*' actionformats '%F{magenta}[%b|%a]%f'
precmd () { vcs_info }

# プロンプトカスタマイズ
PROMPT='%B%F{green}%n@%m%b%f:%F{white}%~%f❯%F{cyan}$vcs_info_msg_0_%f❯ '
