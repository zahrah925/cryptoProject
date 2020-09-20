from cryptography.fernet import Fernet

file = open('key.key','rb')
key = file.read()
file.close

with open('text.txt.encrypted','rb')as f:
	#read the encrypted data
	data = f.read()

fernet = Fernet(key)
#decrypt data
decrypted = fernet.decrypt(data)

#write the original file
with open('text.txt.decrypt','wb') as f:
	f.write(decrypted)
