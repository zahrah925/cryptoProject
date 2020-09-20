# service
## Encrypting and Decrypting a text file

> STEPS:

- Copy and clone the github project on your terminal.
  - `git clone https://github.com/zahrah925/cryptoProject.git`


- Run the install.sh file
  - In the install.sh file, it will create 4 folders: toCrypt, crypted, toDecrypt, decrypted.
  - Put a text.file in the toCrypt folder and the service will crypt the text in the crypted folder.
  - Then with the service it will automatically decrypt the text in the decrypted folder.
  
  
- In the service folder there is a crypted service and a decrypted service.
  - In the crypter.service it creates a service that will crypt a text file in the folder crypted.
  - In the decrypter.service it creates a service that will decrypt a text file and creates it in the decrypted folder.
  - [note] There must be a text file in the toCrypt folder as well as a cryted file in the toDecrypt folder.
  
  
- The fernet folder contains the files to crypt and decrypt a message.
  - First of all run the crypt.sh then the decrypt.sh
  - The text file will be crypted and will appear as text.txt.encrypted.
  - Then a decrypted file will be created with the decrypted message.
  
  
