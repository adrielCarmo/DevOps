#!/bin/bash

echo "Atualizando o servidor..."

apt update
apt upgrade -y

echo "Atualização realizada! Instalando o apache2 e o unzip!"

apt install apache2 -y
apt install unzip -y

echo "Instalação dos pacotes realizadas com sucesso!"

echo "Baixando a aplicação web linux-site-dio no diretório temporário!"

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando a pasta..."

unzip /tmp/main.zip

echo "Copiando os arquivos no diretório padrão do apache2!"

cp -v -R /tmp/linux-site-dio-main/* /var/www/html/

echo "Finalizado com sucesso! Arquivos copiados e aplicação web rodando...."
echo "Fim do script ;)"
