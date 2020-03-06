# Téléchargement image de base ubuntu
FROM ubuntu:16.04

# Mise à jour du container
RUN apt-get update

#Injection du mot de passe admin
RUN ["/bin/bash", "-c", "debconf-set-selections <<< 'mysql-server mysql-server/root_password password user1234'"]
RUN ["/bin/bash", "-c", "debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password your_password'"]

#Installation de mysql
RUN apt-get install -y \
    mysql-server

# Copie les fichiers de la base de données de base
ADD files/run_db files/init_db files/db_schema.sql files/db_basisinfo.sql /tmp/

# Modifie les fichier pour leur donner le droit d'exécution 
RUN chmod u+x /tmp/init_db && chmod u+x /tmp/run_db


# init_db crée la base de donnée par défaut
# à partir de db_schema.sql et db_basisinfo.sql
# Et lance le démon mysql
RUN /tmp/init_db

#Expose le port 3306
EXPOSE 3306

#Pour changer la configuration et rendre plus rapide la recherche 
COPY files/mysqld.cnf /etc/mysql/mysql.conf.d/

#Quand le container se lance exécute le fichier run_db pour maintenir la base de donnée active
ENTRYPOINT "/tmp/run_db"