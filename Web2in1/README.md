
### serveur web "2en1" - vitrine et b2b et base de donnée
- Mise en place de l'environement

`mkdir web2in1`

`cd web2in1`

-Récupérer les fichiers

`curl -o download.sh https://raw.githubusercontent.com/Frodon001/2tl2AdminGr9/master/Web2in1/download.sh`

`chmod 777 download.sh`

- Lancement du docker

`docker-compose up -d`

- Ajout des info de la base de donnée

`docker exec -i web2in1_db_1 mysql -uuser -puser1234 db < sql-scripts/db-init.sql`

- Vérification des données
   * `docker exec -it <NomDeLImage> bash -l` pour entrer en bash dans le docker
   * `mysql -u user -p`loggin dans mysql (password: user1234)
   * `use db;` séléctionner la db
   * `show tables;` montrer les tables
