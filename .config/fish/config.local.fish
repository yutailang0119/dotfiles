set -U fish_user_paths /usr/local/bin

set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate 'yes'
set __fish_git_prompt_showuntrackedfiles 'yes'
set __fish_git_prompt_showupstream 'yes'
set __fish_git_prompt_color_branch yellow
set __fish_git_prompt_color_upstream_ahead green
set __fish_git_prompt_color_upstream_behind red

# Status Chars
set __fish_git_prompt_char_dirtystate '⚡'
set __fish_git_prompt_char_stagedstate '→'
set __fish_git_prompt_char_untrackedfiles '☡'
set __fish_git_prompt_char_stashstate '↩'
set __fish_git_prompt_char_upstream_ahead '+'
set __fish_git_prompt_char_upstream_behind '-'

set -Ux LSCOLORS cxfxexdxbxegedabagacad

# Alias
alias ll "ls -al"
alias ..2 "cd ../../"
alias ..3 "cd ../../../"
alias ..4 "cd ../../../../"
alias ..5 "cd ../../../../../"
alias gl "cd (ghq list --full-path | peco)"

# Go
set -Ux GOPATH $HOME/go
set -U fish_user_paths $GOPATH/bin $fish_user_paths

# rbenv
if which rbenv > /dev/null; rbenv init - | source; end

# plenv
# set -gx PATH ~/.plenv/bin $PATH
source (plenv init - | psub)

# Fultter
set -U fish_user_paths /usr/local/flutter/bin $fish_user_paths

# Android Studio
set -Ux ANDROID_HOME $HOME/Library/Android/sdk/

# Private config
if test -f ~/.config/fish/config.private.fish; source ~/.config/fish/config.private.fish; end
