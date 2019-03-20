#!/bin/bash

if ! [ -d $HOST_WORKSPACE_DIR ]; then
    mkdir -p $HOST_WORKSPACE_DIR
fi

if ! [ -d $ECLIPSE_SETTINGS_DIR ]; then
    mkdir -p $ECLIPSE_SETTINGS_DIR
fi

docker run -ti --rm --net=host --env="DISPLAY" \
    -v $HOME/.Xauthority:/home/developer/.Xauthority \
    -v $ECLIPSE_SETTINGS_DIR:/home/developer/.eclipse \
    -v $HOST_WORKSPACE_DIR:/home/developer/workspace \
    -v $HOME/.ssh:/home/developer/.ssh \
    $MOUNT_PARAMS \
    $IMAGE_NAME \
    bash
#    /home/developer/eclipse/eclipse
