# Installation d'un service loop à la Sisyphe
## Copie des fichiers
Les fichiers de ce répertoire doivent être placés dans:
- loop.sh => /opt/loop/
- loop => /etc/logrotate.d/
- loop.service => /lib/systemd/system/
- loop.conf => /etc/  (ou ne pas l'utiliser)

## Création de l'utilisateur sisyphe
useradd -s /usr/sbin/nologin -r -d /opt/loop sisyphe


## Création du fichier de log
touch /var/log/loop.log

chown sisyphe:sisyphe /var/log/loop.log

## Démarrage du service
systemctl start loop

## Check everything
systemctl status loop

ps -aef | grep loop

ls -l /var/log/loop*

Go to the future
