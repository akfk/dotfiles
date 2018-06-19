#!/bin/bash

#create .vim dir in PWD
if [ ! -e $PWD/.vim ]; then
  mkdir $PWD/.vim
fi

# create links
echo "ln -s $PWD/.vim $HOME"
ln -s $PWD/.vim $HOME
echo "ln -s $PWD/.vimrc $HOME"
ln -s $PWD/.vimrc $HOME

# Install NeoBundle
echo "Install NeoBundle"
git clone https://github.com/Shougo/neobundle.vim $PWD/.vim/bundle/neobundle.vim

echo "Please run vim."
