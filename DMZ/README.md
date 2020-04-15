## Instalation de la DMZ

- Mise en place de l'environement

`curl -o download.sh https://raw.githubusercontent.com/Frodon001/2tl2AdminGr9/master/DMZ/download.sh`

`chmod 777 download.sh`

-Récupérer les fichiers

`./download.sh`

- Lancement du docker

`docker-compose up -d`

- Ajout des info de la base de donnée

`docker exec -i dmz_db_1 mysql -uuser -puser1234 db < sql-scripts/db-init.sql`

- Vérification des données
   * `docker exec -it <NomDeLImage> bash -l` pour entrer en bash dans le docker
   * `mysql -u user -p`loggin dans mysql (password: user1234)
   * `use db;` séléctionner la db
   * `show tables;` montrer les tables