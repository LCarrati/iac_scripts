#!/bin/bash

echo "Autalizando o servidor..."
apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y

echo "Baixando e copiando os arquivos do site..."

cd /tmp
wget https://github.com/LCarrati/tabela-periodica/archive/refs/heads/master.zip
unzip master.zip
cd linux-site-dio
cp -R * /var/www/html/
