#!/bin/bash


export pub=`cat ~/.ssh/id_rsa.pub`
terraform init -var "key_devops=${pub}"
terraform apply -auto-approve -var "key_devops=${pub}"
sleep 5
ansible-playbook playbook.yml
