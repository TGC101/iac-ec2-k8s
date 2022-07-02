#!/bin/bash


terraform init
terraform apply -auto-approve
sleep 5
ansible-playbook playbook.yml
