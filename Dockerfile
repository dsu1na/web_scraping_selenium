FROM ubuntu:22.04

COPY requirements.txt .

RUN apt-get update \
    && apt-get install -y wget unzip \
    && wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb  \
    && apt install -y ./google-chrome-stable_current_amd64.deb \
    && rm google-chrome-stable_current_amd64.deb \
    && apt-get install -y python3-pip \
    && apt install -y git \
    && pip3 install --no-cache-dir -r requirements.txt \
    && apt-get clean