# depuis l'image mysql
FROM mysql:5.7

# ajout de la db
ENV MYSQL_DATABASE db

# copy files import et create db
COPY ./sql-scripts/ /docker-entrypoint-initdb.d/