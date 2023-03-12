FROM jupyter/datascience-notebook:python-3.8
USER root
RUN  apt-get update && apt-get install -y iputils-ping iputils-tracepath dnsutils iproute2 nmap \
     gcc g++ libsasl2-dev libsasl2-modules \
     mesa-utils libegl1-mesa xvfb libopengl0 \
     && pip install cpyvpn aiohttp asyncssh jupyterlab-git jupyterlab-language-pack-ru-RU \
     && pip install moderngl pyvirtualdisplay numpy pyrr pillow \
     && conda install -c aihabitat habitat-sim headless withbullet \
     && npm install -g localtunnel \
     && wget https://gitlab.com/openconnect/vpnc-scripts/-/raw/master/vpnc-script && chmod +x vpnc-script \
     && passwd --delete jovyan \
     && echo "jovyan    ALL=(ALL:ALL) ALL" >> /etc/sudoers
USER jovyan
RUN  wget https://raw.githubusercontent.com/vitaly-zverev/cpyvpn_alpine/main/Check_Services.ipynb
