#!/bin/bash

growpart /dev/nvme0n1 4
lvextend -L +30G /dev/RootVG/rootVol
xfs_growfs /home

sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/RHEL/hashicorp.repo
sudo yum -y install terraform

# Creating databases
cd /home/ec2-user
git clone https://github.com/Sunny-debug/roboshop-dev-infra.git
cd roboshop-dev-infra/40-databases
terraform init
terraform apply -auto-approve