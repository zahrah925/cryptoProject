#!/bin/bash

sudo apt-get install python3-pip
sudo apt-get update
pip3 install cryptography

#create folders to crypted and decrypted
cd /home/zahrah/cryptoProject
mkdir toCrypt
mkdir crypted
mkdir toDecrypt
mkdir decrypted

#copy the service to the given path
cp /home/zahrah/cryptoProject/service/crypter.service /etc/systemd/system/
cp /home/zahrah/cryptoProject/service/decrypter.service /etc/systemd/system/

cd /etc/systemd/system

systemctl start crypter.service
systemctl enable crypter.service
systemctl status crypter.service

systemctl start decrypter.service
systemctl enable decrypter.service
systemctl status decrypter.service

