from cryptography.fernet import Fernet
import os
import sys
fichier = sys.argv[1]

file = open('key.key','rb')
key = file.read()
file.close

os.chdir("/home/zahrah/cryptoProject/toCrypt")

with open(fichier,'rb') as f:
	#read all file data
	data = f.read()

fernet = Fernet(key)
#encrypt data
encrypted = fernet.encrypt(data)

encrypt_name = fichier+'.encrypted'
#write encrypted file
with open(encrypt_name,'wb') as f:
	f.write(encrypted)

