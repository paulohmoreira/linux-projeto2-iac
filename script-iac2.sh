#!/bin/bash

echo "Atualizando servidor..."

apt-get update -y
apt-get upgrade -y

echo "Instalando aplicações necessárias"
apt-get install apache2 -y
apt-get install unzip -y

echo "Baixando e copiando arquivos do site"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main/
cp -R * /var/www/html/
