#!/bin/sh
ansible-pull -o -v \
  -U https://github.com/danielf/server-ansible.git \
  -d /home/ansible/
