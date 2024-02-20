#!/bin/bash
rm $PREFIX/bin/ngrok
rm -rf $PREFIX/share/ngrok
mkdir -p $PREFIX/share/ngrok
apt update && apt upgrade -y
apt install -y proot wget resolv-conf
apt clean
apt autoremove
cd $PREFIX/share/ngrok
tar xvzf ngrok-v3-stable-linux-arm64.tgz -C $PREFIX/bin/
echo -e "\e[1;32mNgrok installed sucessfull!"
echo "Run : ngrok "
echo " To use ngrok"
