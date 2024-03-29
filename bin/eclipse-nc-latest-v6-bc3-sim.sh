#!/bin/bash

source env_docker.sh

#NC_DIR=/mnt/ssd2/amoiseev/v6_clean_bld
NC_DIR=/mnt/ssd2/amoiseev/latest-v6-bc3-sim
export HOST_WORKSPACE_DIR=$NC_DIR/workspace
export IMAGE_NAME=amoiseev/xenial/nc
export NAME=latest-v6-bc3-sim
if ! [ -d $NC_DIR ]; then
    mkdir -p $NC_DIR
fi

export MOUNT_PARAMS="\
    --privileged \
    -v ${NC_DIR}:/home/developer/nc \
    -v /usr/bin/docker:/usr/bin/docker -v /var/run/docker.sock:/var/run/docker.sock \
    --name ${NAME}-eclipse-nc"

./run-eclipse.sh

