#Docker to develop/try Ansible module for Fortigate
#Start with ubuntu 
FROM ubuntu:18.04
#Update the Ubuntu software repository inside the dockerfile with the 'RUN' command.
# Update Ubuntu Software repository
RUN apt update && apt -y upgrade && apt -y install git python3-pip python3-dev software-properties-common zile byobu
# python-setuptools libxml2-dev libxslt-dev   zlib1g-dev
# install ansible > 2.8 to get the debugguer 
#RUN apt-add-repository -y ppa:ansible/ansible && apt update && apt -y upgrade && apt -y install ansible
#RUN pip3 install --upgrade pip3 && pip3 install -i https://testpypi.python.org/pypi fortiosapi
RUN pip3 install --upgrade pip && pip3 install fortiosapi && pip3 install ansible
CMD ["/usr/bin/bash"]
