FROM ubuntu:latest

RUN apt update && apt upgrade \
    && apt install -y locales wget unzip \
    && locale-gen ja_JP.UTF-8 \
    && echo "export LANG=ja_JP.UTF-8" >> ~/.bashrc

RUN apt install -y open-jtalk open-jtalk-mecab-naist-jdic hts-voice-nitech-jp-atr503-m001

RUN wget https://sourceforge.net/projects/mmdagent/files/MMDAgent_Example/MMDAgent_Example-1.6/MMDAgent_Example-1.6.zip/download -O MMDAgent_Example-1.6.zip \
    && unzip MMDAgent_Example-1.6.zip MMDAgent_Example-1.6/Voice/* \
    && cp -r MMDAgent_Example-1.6/Voice/mei/ /usr/share/hts-voice

WORKDIR /work
