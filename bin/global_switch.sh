#!/bin/bash
#set -x
typeset _branch=$1
function update
{
    git co -f $_branch
    git pull
}

pushd /home/zerg/replay5/replay

update 

popd

pushd /home/zerg/replay5/common

update

popd

pushd /home/zerg/replay5/blk-snapshot

update

ctags -R > tags

popd

pushd /home/zerg/replay5/packaging

update
popd
