#!/usr/bin/env bash
#
apt update
apt -y autoremove
apt -y upgrade
apt -y install \
    git vim locales language-pack-en-base apt-transport-https \
    ca-certificates curl software-properties-common tzdata
echo 'en_US.UTF-8 UTF-8' > /var/lib/locales/supported.d/en
locale-gen

# docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
apt update
apt install docker-ce
systemctl status docker
usermod -aG docker ubuntu
apt update && apt -y upgrade

curl -o /usr/local/bin/docker-compose \
  -sL "https://github.com/docker/compose/releases/download/1.24.0/docker-compose-$(uname -s)-$(uname -m)" \
  && chmod +x /usr/local/bin/docker-compose
