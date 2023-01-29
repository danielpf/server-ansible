#!/bin/sh

if [ "$#" == "0" ]; then
  FLAGS="-o"
else
  FLAGS="$@"
fi

cd $HOME
ansible-pull $FLAGS \
  -U https://github.com/danielpf/server-ansible.git \
  -d /home/ansible/repo
