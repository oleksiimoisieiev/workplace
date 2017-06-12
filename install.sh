#!/bin/bash

get() {
 cp -rf ~/$1 $1
}

get  .vim 
get  .zshrc
get .ssh 
get .gitconfig 

get bin

git status
