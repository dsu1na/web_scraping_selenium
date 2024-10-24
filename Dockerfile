FROM ubuntu:22.04

COPY requirements.txt .

RUN apt-get update \
    && apt-get install sudo \
    && apt-get install -y python3-pip \
    && apt install -y git \
    && pip3 install --no-cache-dir -r requirements.txt