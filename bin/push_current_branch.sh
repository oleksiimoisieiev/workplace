#!/bin/bash

push_git() {
current_branch=`git br | awk '/\*/ {print $2}'`

git push $1 origin $current_branch:$current_branch
}

push_hg() {
        hg push --new-branch -b .
}

git st >/dev/null 2>&1

[[ $? -eq 0 ]] && { 
  push_git 
} || {

  hg st >/dev/null 2>&1

  [[ $? -eq 0 ]] && {
       push_hg 
     } || {
       echo "Error: neither hg nor git repo found."
     }
}
