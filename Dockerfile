FROM ghcr.io/linuxserver/rdesktop:debian-xfce

COPY ./nomachine.deb .
RUN dpkg -i nomachine.deb && rm nomachine.deb
