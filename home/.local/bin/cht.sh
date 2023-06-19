#!/usr/bin/env bash

languages=$(echo "javascript typescript python lua vim neovim zsh bash css git tmux" | tr " " "\n")
core_utils=$(echo "find sed awk xargs" | tr " " "\n")
selected=$(echo -e "$languages\n$core_utils" | fzf)

read -p "Query: " query

if echo $languages | grep -qs $selected; then
  curl cht.sh/$selected/$(echo "$query" | tr " " "+") | less
else
  curl cht.sh/$selected~$query | less
fi

