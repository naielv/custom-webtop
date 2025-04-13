FROM ghcr.io/linuxserver/webtop:latest

RUN apk update && apk add libreoffice libreoffice-lang-es geany screen czkawka-gui mesa-gles thunderbird nano
