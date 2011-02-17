#!/usr/bin/env bash
HERE=`pwd`
#if [ -f ~/.vimrc ]
#then
  echo "Moving vimrc"
  mv ~/.vimrc ~/.vimrc.bak
  echo "Sym vimrc"
  ln -s $HERE/vim/vimrc ~/.vimrc
#fi

#if [ -f ~/.vim ]
#then
  echo "Moving vim"
  mv ~/.vim ~/.vim.bak
  echo "Sym vim"
  ln -s $HERE/vim ~/.vim
#fi

#if [ -f ~/.bashrc ]
#then
  echo "Moving .bashrc"
  mv ~/.bashrc ~/.bashrc.bak
  echo "Sym .bashrc"
  ln -s $HERE/bash/bashrc ~/.bashrc
#fi
