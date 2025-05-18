FROM ghcr.io/linuxserver/webtop:latest

RUN apk update && apk add libreoffice libreoffice-lang-es geany screen czkawka-gui mesa-gles thunderbird nano && rm /usr/lib/python3.*/EXTERNALLY-MANAGED -f && python3 -m ensurepip && pip3 install --no-cache --upgrade --break pip setuptools && pip install --upgrade --extra-index-url https://PySimpleGUI.net/install PySimpleGUI
