#!/bin/bash

declare -a files=("bash_profile" "bashrc" "gitconfig" "gitignore" "tmux.conf")

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

# neovim
cp ~/.config/nvim/init.vim ~/.config/nvim/init.vim.bak
rm ~/.config/nvim/init.vim
ln -s ~/projects/dotfiles/init.vim ~/.config/nvim/init.vim
