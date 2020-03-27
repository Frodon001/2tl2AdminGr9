# depuis l'image mysql
FROM mysql

# ajout de la db
ENV MYSQL_DATABASE db

# copy files import et create db
COPY ./sql-scripts/ /docker-entrypoint-initdb.d/