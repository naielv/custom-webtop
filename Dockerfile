FROM debian:bookworm

RUN curl https://download.nomachine.com/download/9.0/Raspberry/nomachine_9.0.188_11_arm64.deb -o nomachine.deb && dpkg -i nomachine.deb && rm nomachine.deb
RUN apt update && apt install -y 
    mate-desktop-environment-core mate-desktop-environment mate-indicator-applet ubuntu-mate-themes ubuntu-mate-wallpapers firefox nano sudo unzip && apt clean && rm -rf /var/lib/apt/lists/*

CMD groupadd -r $USER -g 433 \
&& useradd -u 431 -r -g $USER -d /home/$USER -s /bin/bash -c "$USER" $USER \
&& adduser $USER sudo \
&& mkdir /home/$USER \
&& chown -R $USER:$USER /home/$USER \
&& echo $USER':'$PASSWORD | chpasswd
/etc/NX/nxserver --startup
tail -f /usr/NX/var/log/nxserver.log
