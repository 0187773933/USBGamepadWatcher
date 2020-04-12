#!/bin/bash
sudo docker run -it \
--privileged -v /dev/input/:/dev/input/ \
--network host \
alpine-button-watcher