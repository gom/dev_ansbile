#!/bin/sh

if ! type ansible > /dev/null 2>&1; then
    sudo apt-get install -y python-pip python-dev libffi-dev libssl-dev
    sudo pip install -U pip ansible
fi
ansible-playbook -i hosts localhost playbook.yml 
