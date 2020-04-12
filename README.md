# USB Gamepad Watcher

### Apparently it goes up to 31
### https://www.kernel.org/doc/Documentation/input/input.txt
```
cat /proc/devices
ls -l /dev/input/event0*
```

## On Mac OSX Create Event Files
```
for i in $(seq 0 31); do sudo mknod event$i c 13 64; done
sudo chmod 660 *
```

## On Linux , one step
```
for i in $(seq 0 31); do sudo mknod event$i c 13 64 -m 660; done
```

## Docker Build Command

```
sudo docker build -t alpine-button-watcher .
```

## Docker Run Command
```
sudo docker run -dit --restart='always' \
--privileged -v /dev/input/:/dev/input/ \
--network host \
alpine-button-watcher
```