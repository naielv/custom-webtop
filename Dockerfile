FROM ghcr.io/linuxserver/rdesktop:latest

RUN apk add --no-cache \
    libreoffice \
    libreoffice-lang-es \
    geany \
    firefox \
    libnotify \
    screen \
    czkawka-gui \
    mesa-gles \
    thunderbird \
    nano \
    python3-tkinter \
    py3-gobject3 \
    cifs-utils \
    shotwell \
    && rm /usr/lib/python3.*/EXTERNALLY-MANAGED -f && python3 -m ensurepip && pip3 install --no-cache --upgrade --break \
    pip \
    setuptools \
    pywebview \
    appjar
