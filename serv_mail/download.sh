#! /bin/sh

curl -o setup.sh https://raw.githubusercontent.com/tomav/docker-mailserver/master/setup.sh; chmod a+x ./setup.sh

curl -o docker-compose.yml https://raw.githubusercontent.com/tomav/docker-mailserver/master/docker-compose.yml.dist

curl -o .env https://raw.githubusercontent.com/tomav/docker-mailserver/master/.env.dist

curl -o env_mailserver https://raw.githubusercontent.com/tomav/docker-mailserver/master/env-mailserver.dist