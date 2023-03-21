#!/bin/bash
# exemple de sequence pour créer le home directory
# d'un utilisateur


mkdir /home/aelion

# copy skeleton files from /etc/skel
# NB: files begining by a "." !
cp /etc/skel/.[^.]* /home/aelion

## change only owner user
#chown -R aelion /home/aelion

## change only owner group
#chgrp -R stagiaire /home/aelion
#chown -R :stagiaire /home/aelion

## change both owner: user and group 
chown -R aelion:stagiaire /home/aelion
