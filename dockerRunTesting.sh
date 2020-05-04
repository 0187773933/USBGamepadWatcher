#!/bin/bash
sudo docker run -it \
--name 'alpine-button-watcher' \
--privileged -v /dev/input/:/dev/input/ \
--network host \
alpine-button-watcher