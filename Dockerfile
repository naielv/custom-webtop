FROM ghcr.io/linuxserver/webtop:latest

RUN apk update && apk add libreoffice geany screen czkawka-gui mesa-gles thunderbird nano
