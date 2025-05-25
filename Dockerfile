FROM ghcr.io/linuxserver/rdesktop:debian-xfce

RUN curl https://download.nomachine.com/download/9.0/Raspberry/nomachine_9.0.188_11_arm64.deb -o nomachine.deb && dpkg -i nomachine.deb && rm nomachine.deb
RUN apt update && apt install -y wget \
    unzip && apt clean && rm -rf /var/lib/apt/lists/*

ENTRYPOINT []
CMD /etc/NX/nxserver --startup && tail -f /usr/NX/var/log/nxserver.log
