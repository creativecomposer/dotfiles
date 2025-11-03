# This file will be sourced always. So put settings that you want to be applied to all shells
#
export PATH=$PATH:~/.local/bin

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

alias vim=nvim
export EDITOR=vim
