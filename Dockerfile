FROM debian:bookworm
RUN /bin/sh -c apt update && apt install -y xfce4 thunar mousepad xfce4-notifyd htop nano sudo unzip wget curl cups dbus-x11 chromium python3-pip python3-tk && apt clean && rm -rf /var/lib/apt/lists/* # buildkit
RUN /bin/sh -c pip3 install --break appJar pywebview
RUN /bin/sh -c wget https://download.nomachine.com/download/9.0/Raspberry/nomachine_9.0.188_11_arm64.deb -O nomachine.deb && dpkg -i nomachine.deb && rm nomachine.deb # buildkit
CMD ["/bin/sh" "-c" "groupadd -r $USER -g 433 && useradd -u 431 -r -g $USER -d /home/$USER -s /bin/bash -c \"$USER\" $USER && adduser $USER sudo && mkdir /home/$USER && chown -R $USER:$USER /home/$USER && echo $USER':'$PASSWORD | chpasswd && /etc/NX/nxserver --startup && tail -f /usr/NX/var/log/*"]




