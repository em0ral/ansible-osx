#!bin/zsh

touch /Users/em0ral/.zshrc
touch /Users/em0ral/.zprofile
mkdir /Users/em0ral/.ssh

python3 -m pip3 install --upgrade pip
sudo pip3 install ansible
ansible-galaxy install -r requirements.yml

ansible-playbook -i 'localhost,' -c local ansible_osx.yml --ask-become-pass
