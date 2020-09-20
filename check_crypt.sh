#!/bin/bash

cd /home/zahrah/cryptoProject/toCrypt
array=($(echo *))

cd /home/zahrah/cryptoProject/crypted
In_Crypted="$(echo *)"

for fichier in ${array[*]}
do
	if [[ "$In_Crypted" == "$fichier.encrypted" ]]
	then
		echo "exist $fichier"
	else
		cd /home/zahrah/cryptoProject
		python3 crypt.py "$fichier"
		mv /home/zahrah/cryptoProject/toCrypt/"$fichier.encrypted" /home/zahrah/cryptoProject/crypted/"$fichier.encrypted"
	fi
done
