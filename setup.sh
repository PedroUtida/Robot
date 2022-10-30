#!/bin/bash
#
if [ "$EUID" -ne 0 ]
        then echo "Por favor, me execute como root."
        exit 1
fi

chmod 755 Robot/mrrobot.sh
cp Robot/mrrobot.sh /usr/bin/robo
rm -rf Robo
echo "Instalando dependencias ..."
apt install -y  gnustep-gui-runtime 
echo "Instalando o Mr. Robot em sua maquina! "
echo
echo "Aguarde..."
