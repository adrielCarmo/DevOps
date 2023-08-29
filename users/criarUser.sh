#!/bin/bash

echo "Criando usuários do sistema...."

useradd rodrigo -c "Rodrigo Silva" -s /bin/bash -m -p $(openssl passwd -6 admin) -G GRP_ADM
passwd rodrigo -e

useradd navarezi -c "Lucas Navarezi" -s /bin/bash -m -p $(openssl passwd -6 admin) -G GRP_ADM
passwd navarezi -e

useradd arakaki -c "Lucas Arakaki" -s /bin/bash -m -p $(openssl passwd -6 admin) -G GRP_VEN
passwd arakaki -e

useradd wyllian -c "Wyllian Doctor" -s /bin/bash -m -p $(openssl passwd -6 admin) -G GRP_VEN
passwd wyllian -e

echo "Finalizado!!!"
