#!/bin/bash

echo "Deploy Lab Troubleshoot"
ansible-galaxy collection install community.general

ansible-playbook -i 001-ansible-install-apache/hosts             001-ansible-install-apache/playbook.yml
ansible-playbook -i 002-ansible-install-gitlab/hosts             002-ansible-install-gitlab/playbook.yml
ansible-playbook -i 003-ansible-install-zabbix-server/hosts      003-ansible-install-zabbix-server/playbook.yml
ansible-playbook -i 004-ansible-install-zabbix-agent/hosts       004-ansible-install-zabbix-agent/playbook.yml
ansible-playbook -i 005-ansible-configure-servers-packages/hosts 005-ansible-configure-servers-packages/playbook.yml

ansible-playbook -i 006-ansible-create-project-gitlab/hosts         006-ansible-create-project-gitlab/playbook.yml 
ansible-playbook -i 007-ansible-git-add-files/hosts                 007-ansible-git-add-files/playbook.yml 
ansible-playbook -i 008-ansible-copy-exercicio001-to-node1/hosts    008-ansible-copy-exercicio001-to-node1/playbook.yml 
ansible-playbook -i 009-ansible-copy-exercicio002-to-node1/hosts    009-ansible-copy-exercicio002-to-node1/playbook.yml 
ansible-playbook -i 010-ansible-copy-exercicio004-to-node1/hosts    010-ansible-copy-exercicio004-to-node1/playbook.yml 
ansible-playbook -i 011-ansible-copy-exercicio005-to-node1/hosts    011-ansible-copy-exercicio005-to-node1/playbook.yml 


echo "Finish Lab Troubleshoot"


