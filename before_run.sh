#!/bin/bash
export ABSOLUTE_PATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
rm -rf ~/.ssh/known_hosts
ssh-agent bash
ssh-add ~/.ssh/*.pem
sudo cp -f ./ansible_setting/etc_hosts /etc/hosts
cp -f ./ansible_setting/ansible_hosts /etc/ansible/ansible/hosts
cp -f  ./ansible_setting/ansible/ansible.cfg /etc/ansible/ansible/ansible.cfg

