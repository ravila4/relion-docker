#! /bin/bash

docker run --name relion --rm -it \
    -v $HOME:/home/$USER \
    -v /tmp/.X11-unix:/tmp/.X11-unix:rw \
    -v /etc/group:/etc/group:ro \
    -v /etc/passwd:/etc/passwd:ro \
    -v /etc/shadow:/etc/shadow:ro \
    -v /etc/sudoers.d:/etc/sudoers.d:ro \
    -e DISPLAY --user=$(id -u $USER):$(id -g $USER) \
    --privileged \
    ravila4/relion3.1
