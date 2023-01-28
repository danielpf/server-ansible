#!/bin/sh
ansible-pull -o -v \
  -U https://github.com/danielpf/server-ansible.git \
  -d /home/ansible/repo
