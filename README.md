# Ansible-Docker-env
Docker for ansible enviroment to connect FortiGate

# A few cli to play with:
#Docekr test/dev 
docker build  -t mjchenansible .

#Run
docker run -i -t mjchenansible /bin/bash

#To mount a local directory for playbook dev/test :
docker run -v /Users/mjchen/Ansible/Ansible-Docker-env/:/Ansible-Docker-env --rm -i -t mjchenansible /bin/bash

#Debugging API calls on your fortigate:
diag debug application httpsd 255
diag debug enable

#Disable InsecureRequestWarning in fortiosapi  
vim /usr/local/lib/python3.6/dist-packages/fortiosapi/fortiosapi.py  


