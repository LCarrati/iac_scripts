#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /vendas
mkdir /seguranca

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."

useradd carlos -s -m /bin/bash p- $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd maria -s -m /bin/bash p- $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd joao -s -m /bin/bash p- $(openssl passwd -crypt Senha123) -G GRP_ADM

useradd debora -s -m /bin/bash p- $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd sebastiana -s -m /bin/bash p- $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd roberto -s -m /bin/bash p- $(openssl passwd -crypt Senha123) -G GRP_VEN

useradd josefina -s -m /bin/bash p- $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd amanda -s -m /bin/bash p- $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd rogerio -s -m /bin/bash p- $(openssl passwd -crypt Senha123) -G GRP_SEC

echo "Especificando permissões dos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /vendas
chown root:GRP_SEC /seguranca

chmod 770 /adm
chmod 770 /vendas
chmod 770 /seguranca
chmod 777 /publico
