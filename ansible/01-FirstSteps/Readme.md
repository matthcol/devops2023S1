# First ansible commands

## Settings

Régler l'interprète python: https://docs.ansible.com/ansible/latest/reference_appendices/interpreter_discovery.html

## Ping
- on hosts with tag [hosts]

ansible -i hosts -u srvadmin -k -m ping hosts


- on all hosts
ansible -i hosts -u srvadmin -k -m ping all


## File
ansible -i hosts -u srvadmin -k -m file -a "path=test_ansible/friday/flight state=directory mode=0700" all

ansible -i hosts -u srvadmin -k -m file -a "path=test_ansible state=absent" all

**NB:** with sudo + password 
ansible -i hosts -u srvadmin -k -b -K -m file -a "path=/opt/oracle state=directory" all

