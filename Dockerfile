FROM alpine:latest
RUN apk add linux-headers
RUN apk add gcc
RUN apk add nano
RUN apk add tar
RUN apk add python3-dev
RUN apk add musl-dev
RUN apk add bash
RUN apk add openrc
RUN apk add python3
RUN apk add py3-pip
RUN pip3 install requests
RUN pip3 install evdev

COPY event_files.tar.gz /home/
RUN mkdir /dev/input/
RUN tar -xvf /home/event_files.tar.gz -C /dev/input/

COPY JoyStickInput.py /home/
ENTRYPOINT [ "python3" , "/home/JoyStickInput.py" ]