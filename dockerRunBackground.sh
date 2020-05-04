#!/bin/bash
sudo docker run -dit --restart='always' \
--name 'alpine-button-watcher' \
--privileged -v /dev/input/:/dev/input/ \
--network host \
alpine-button-watcher