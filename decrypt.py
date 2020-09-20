from cryptography.fernet import Fernet
import os
import sys
fichier = sys.argv[1]

file = open('key.key','rb')
key = file.read()
file.close

os.chdir("/home/zahrah/cryptoProject/toDecrypt")

with open(fichier,'rb')as f:
	#read the encrypted data
	data = f.read()

fernet = Fernet(key)
#decrypt data
decrypted = fernet.decrypt(data)

decrypt_name = fichier+'.decrypted'
#write the decrypted file
with open(decrypt_name,'wb') as f:
	f.write(decrypted)
