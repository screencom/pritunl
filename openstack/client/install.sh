#!/usr/bin/env bash
#
sudo tee /etc/apt/sources.list.d/pritunl.list << EOF
deb http://repo.pritunl.com/stable/apt bionic main
EOF

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com --recv 7568D9BB55FF9E5287D586017AE645C0CF8E292A && \
sudo apt-get update && \
sudo apt autoremove && \
sudo DEBIAN_FRONTEND=noninteractive apt-get install pritunl-client inetutils-ping
