
### serveur VOIP
- Mise en place de l'environement

`mkdir VOIP`

`cd VOIP`

-Récupérer les fichiers

`curl -o download.sh https://raw.githubusercontent.com/Frodon001/2tl2AdminGr9/master/VOIP/download.sh`

`chmod 777 download.sh`

`./download.sh`

- Lancement du docker

`docker-compose up -d`