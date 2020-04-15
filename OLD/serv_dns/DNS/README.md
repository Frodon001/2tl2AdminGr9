## HOW TO USE

### récupération du fichier docker 
docker pull glemer/wt_dns

### téléchargement des fichiers nécessaires et placement dans un dossier DNS
mkdir DNS

cd DNS

curl -o download.sh https://raw.githubusercontent.com/Frodon001/2tl2AdminGr10/master/serv_dns/DNS/download.sh

chmod +x download.sh

### exécuter le fichier de téléchargement
./download.sh

### lancement du dns avec docker-compose a exécuter dans le dossier DNS
docker-compose up
