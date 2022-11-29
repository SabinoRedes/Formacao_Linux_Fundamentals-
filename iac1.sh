#! /bin /bash

echo "Criando Diretórios!..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando Grupos de Usuários!..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando Usuários!..."

useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt senha123456)
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt senha123456)
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt senha123456)
useradd debora -m -s /bin/bash -p $(openssl passwd -crypt senha123456)
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt senha123456)
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt senha123456)
useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt senha123456)
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt senha123456)
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt senha123456)

echo "Adicionando os usuarios aos grupos!..."

usermod -G GRP_ADM carlos
usermod -G GRP_ADM maria
usermod -G GRP_ADM joao
usermod -G GRP_VEN debora
usermod -G GRP_VEN sebastiana
usermod -G GRP_VEN roberto
usermod -G GRP_SEC josefina
usermod -G GRP_SEC amanda
usermod -G GRP_SEC rogerio

echo "Especificando Permissoes dos Diretorios!..."
echo "Especificando donos das pastas"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Finalizado..........."
echo ".................................."
echo ".........................................."







