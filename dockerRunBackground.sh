#!/bin/bash
sudo docker run -dit --restart='always' \
--privileged -v /dev/input/:/dev/input/ \
--network host \
alpine-button-watcher