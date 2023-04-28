# Création d'un utilisateur sudoers avec clé SSH

## Sur la machine contrôleur 
Créer un jeu de clé SSH de type rsa: id_rsa_ansible

## Playbooks

### Création du user et copie de clé
#### 1ère solution
ansible-playbook -u srvadmin -k -b -K -i hosts install_keys.yml

#### 2ème solution avec le module ansible.posix.authorized_key
ansible-playbook -u srvadmin -k -b -K -i hosts install_keys_v2.yml

