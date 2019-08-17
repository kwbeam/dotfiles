#!/bin/bash

declare -a files=("bash_profile" "bashrc" "inputrc" "cwmrc" "vimrc" "tmux.conf" "gitconfig" "gitignore" "Xresources" "zshrc" "zshenv")

for f in "${files[@]}"
do
  echo "-------------------------------------------------------------------"
  echo "$f => ~/.$f"
  if [ -f ~/.$f ]; then
	echo "Creating backup copy and removing file ~/.$f"
  	cp ~/.$f ~/.$f.bak
  	rm ~/.$f
  fi

  "Creating softlink to ~/projects/dotfiles/$f"
  ln -s ~/projects/dotfiles/$f ~/.$f
done
