FROM ghcr.io/linuxserver/rdesktop:debian-xfce

RUN curl https://download.nomachine.com/download/9.0/Raspberry/nomachine_9.0.188_11_arm64.deb -o nomachine.deb && dpkg -i nomachine.deb && rm nomachine.deb
