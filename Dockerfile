FROM ghcr.io/linuxserver/webtop:latest

RUN apk update && apk add libreoffice libreoffice-lang-es geany screen czkawka-gui mesa-gles thunderbird nano python3-tkinter	py3-gobject3
 && rm /usr/lib/python3.*/EXTERNALLY-MANAGED -f && python3 -m ensurepip && pip3 install --no-cache --upgrade --break pip setuptools pywebview appjar
