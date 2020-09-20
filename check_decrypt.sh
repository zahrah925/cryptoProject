#!/bin/bash

cd /home/zahrah/cryptoProject/toDecrypt
array=($(echo *))

cd /home/zahrah/cryptoProject/decrypted
In_Crypted="$(echo *)"

for fichier in ${array[*]}
do
	if [[ "$In_Crypted" == "$fichier.encrypted" ]]
	then
		echo "exist $fichier"
	else
		cd /home/zahrah/cryptoProject
		python3 decrypt.py "$fichier"
		mv /home/zahrah/cryptoProject/toDecrypt/"$fichier.decrypted" /home/zahrah/cryptoProject/decrypted/"$fichier.decrypted"
	fi
done
