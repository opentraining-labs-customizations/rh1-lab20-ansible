#!/bin/bash

echo "Deploy Lab Troubleshoot"
ansible-galaxy collection install community.general
ansible-playbook -i hosts server-playbook.yml
ansible-playbook -i hosts node1-playbook.yml
echo "Finish Lab Troubleshoot"


