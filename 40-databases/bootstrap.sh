#!/bin/bash

dnf install ansible -y 
ansible-pull -U https://github.com/Sunny-debug/ansible-roboshop-roles.git -e server_name=mongodb main.yaml 