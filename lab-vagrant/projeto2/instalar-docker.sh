#!/bin/bash

echo "Atualizando pacotes..."
sudo apt update -y
sudo apt upgrade -y

echo "Instalando o Docker..."

curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh