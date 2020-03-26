#! /bin/sh

curl -o setup.sh https://raw.githubusercontent.com/tomav/docker-mailserver/master/setup.sh; chmod a+x ./setup.sh;

curl -o docker-compose.yml https://raw.githubusercontent.com/tomav/docker-mailserver/master/docker-compose.yml.dist;

curl -o env-mailserver https://raw.githubusercontent.com/tomav/docker-mailserver/master/env-mailserver.dist;

#curl -o env_mailServeur.env https://raw.githubusercontent.com/Frodon001/2tl2AdminGr9/#master/serv_mail/env_mailServeur.env;

mkdir config;
mkdir config/opendkim;
mkdir config/opendkim/keys;
mkdir config/opendkim/keys/wt2-9.ephec-ti.be;