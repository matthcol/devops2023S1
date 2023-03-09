# Atelier: script rangement de photos
Nom du script:  sort_photos.sh

## Script v1 
Ecrire un script qui prend en arguments:
- un dossier de photos à classer 
- un dossier de destinations

Le Script déplace tous les fichiers .jpg du dossier 1 vers le dossier 2

## Script v2
Vérifier les points suivants:
- le script a le bon nombre d'arguments. 
- le premier paramètre est un dossier existant lisible
- le deuxième paramètre est un dossier existant modifiable

En cas d'erreur signaler l'erreur et afficher l'usage du programme

## Script v3
Organiser les photos à trier dans le dossier destination
en sous dossiers: **YYYY/MM/DD** en fonction de l'horodatage de la photo.

Si un sous dossier n'existe pas, il faut le créer.

Si une photo ne contient pas le TAG d'horodatage, la placer dans un sous
dossier **Misc**
