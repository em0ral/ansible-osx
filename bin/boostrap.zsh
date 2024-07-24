#!bin/zsh

touch /Users/em0ral/.zshrc
touch /Users/em0ral/.profile
mkdir /Users/em0ral/.ssh
mkdir /Users/em0ral/Solana
python3 -m pip3 install --upgrade pip
sudo pip3 install ansible
ansible-galaxy install -r requirements.yml

ansible-playbook -i 'localhost,' -c local ansible_osx.yml --ask-become-pass
