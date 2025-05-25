FROM ghcr.io/linuxserver/rdesktop:debian-xfce

RUN wget https://download.nomachine.com/download/9.0/Raspberry/nomachine_9.0.188_11_arm64.deb -O nomachine.deb && dpkg -i nomachine.deb && rm nomachine.deb
