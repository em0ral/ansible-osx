#!bin/zsh

xcode-select --install
sudo pip3 install ansible
ansible-galaxy install -r requirements.yml

ansible-playbook -i 'localhost,' -c local ansible_osx.yml --ask-become-pass
