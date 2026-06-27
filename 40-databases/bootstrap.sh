#!/bin/bash

server_name=$1
dnf install ansible -y 
ansible-pull -U https://github.com/Sunny-debug/ansible-roboshop-roles.git -e server_name=$server_name main.yaml 