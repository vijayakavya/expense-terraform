#!/bin/bash

dnf install python3.11-pip -y | tee -a /opt/userdata.log
pip3.11 install boto3 botocore | tee -a /opt/userdata.log
ansible-pull -i localhost, -U https://github.com/vijayakavya/infra-ansible main.yml -e role_name=${role_name} -e env=${env} | tee -a /opt/userdata.log
