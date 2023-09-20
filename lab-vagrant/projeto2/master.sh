#!/bin/bash

docker swarm init --advertise-addr 172.16.2.230
sudo docker swarm join-token worker | grep docker >> /vagrant/worker.sh