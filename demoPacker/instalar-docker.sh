#!/bin/bash
sudo yum install docker-ce docker-ce-cli
sudo systemctl start docker


sudo groupadd docker
sudo usermod -aG docker centos
