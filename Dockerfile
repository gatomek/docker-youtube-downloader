# syntax=docker/dockerfile:1
FROM ubuntu:22.04
WORKDIR /home/gatomek
RUN apt update -y
RUN apt upgrade -y
RUN apt install python3 -y
RUN apt install python-is-python3 -y
RUN apt install curl -y
RUN apt install ffmpeg -y
COPY youtube-dl /usr/local/bin/
RUN chmod a+rx /usr/local/bin/youtube-dl
