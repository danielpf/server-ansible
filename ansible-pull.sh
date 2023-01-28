#!/bin/sh

cd $HOME
ansible-pull -o -v \
  -U https://github.com/danielpf/server-ansible.git \
  -d /home/ansible/repo
