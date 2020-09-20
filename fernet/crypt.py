from cryptography.fernet import Fernet

file = open('key.key','rb')
key = file.read()
file.close

with open('text.txt','rb') as f:
	#read all file data
	data = f.read()

fernet = Fernet(key)
#encrypt data
encrypted = fernet.encrypt(data)

#write encrypted file
with open('text.txt.encrypted','wb') as f:
	f.write(encrypted)

