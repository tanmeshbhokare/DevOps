#!/bin/bash

sudo apt update
sudo apt upgrade -y
sudo apt autoremove -y
sudo apt install vim -y
sudo apt install gedit -y
sudo apt install curl -y
sudo apt install tree -y
sudo apt install wget -y
sudo apt install unzip -y
sudo apt install ssh -y
sudo apt install net-tools -y
sudo apt install default-jdk -y
sudo apt install python3 -y
sudo apt install git -y
sudo apt install docker.io -y
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo apt install maven -y
sudo apt install software-properties-common
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt install ansible -y
