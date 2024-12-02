#!/bin/bash

echo "Iniciando atualização do sistema...."

apt-get update
apt-get upgrade

echo "Criando Servidor Web...."

apt-get install apache2 -y
apt-get install unzip -y

echo " Baixando e copiando arquivos para provisionar aplicação...."

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/



