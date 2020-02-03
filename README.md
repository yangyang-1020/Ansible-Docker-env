# Ansible-Docker-env
Docker for ansible enviroment to connect FortiGate

# A few cli to play with:
#Docekr test/dev 
docker build  -t yyansible .

#Run
docker run -i -t yyansible /bin/bash

#To mount a local directory for playbook dev/test :
docker run -v C:\workspace\Ansible-Docker-env\:/Ansible-Docker-env --rm -i -t yyansible /bin/bash

#Debugging API calls on your fortigate:
diag debug application httpsd 255
diag debug enable

#Disable InsecureRequestWarning in fortiosapi(no need modify if use http)
vim /usr/local/lib/python3.6/dist-packages/fortiosapi/fortiosapi.py  


