FROM ghcr.io/linuxserver/webtop:latest

RUN apk update && apk add libreoffice libreoffice-lang-es geany screen czkawka-gui mesa-gles thunderbird nano && python3 -m ensurepip && pip3 install --no-cache --upgrade --break pip setuptools PySimpleGUI
