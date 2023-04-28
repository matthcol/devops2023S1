# Création d'un utilisateur sudoers avec clé SSH

## Sur la machine contrôleur 
Créer un jeu de clé SSH de type rsa: id_rsa_ansible

## Playbooks
### Variables
Les variables placées dans le fichie ***group_vars/all*** sont valables sur tout l'inventaire.

Ces variables pourront être redéfinies dans un lieu avec précédence plus grande (par exemple avec l'option -e).


### Création du user et copie de clé
#### 1ère solution
ansible-playbook -u srvadmin -k -b -K -i hosts install_keys.yml

ansible-playbook -u srvadmin -k -b -K -i hosts -e "user_installer=oinstall" install_keys.yml

#### 2ème solution avec le module ansible.posix.authorized_key
ansible-playbook -u srvadmin -k -b -K -i hosts install_keys_v2.yml

ansible-playbook -u srvadmin -k -b -K -i hosts -e "user_installer=oinstall" install_keys_v2.yml

### Suppresion du user
 
ansible-playbook -u srvadmin -k -b -K -i hosts uninstall_user.yml

ansible-playbook -u srvadmin -k -b -K -i hosts -e "user_installer=oinstall" uninstall_user.yml

