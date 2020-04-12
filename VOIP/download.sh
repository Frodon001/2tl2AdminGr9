#Récuprération du docker de voip
docker pull glemer/wt_voip:latest

#création des dossier de réception
MKDIR conf

#download docker-compose
curl -o docker-compose.yml https://raw.githubusercontent.com/Frodon001/2tl2AdminGr9/master/VOIP/docker-compose.yml

#download fichier de config
curl -o conf/extensions.conf https://raw.githubusercontent.com/Frodon001/2tl2AdminGr9/master/VOIP/conf/extensions.conf
curl -o conf/iax.conf https://raw.githubusercontent.com/Frodon001/2tl2AdminGr9/master/VOIP/conf/iax.conf
curl -o conf/logger.conf https://raw.githubusercontent.com/Frodon001/2tl2AdminGr9/master/VOIP/conf/logger.conf
curl -o conf/queues.conf https://raw.githubusercontent.com/Frodon001/2tl2AdminGr9/master/VOIP/conf/queues.conf
curl -o conf/sip.conf https://raw.githubusercontent.com/Frodon001/2tl2AdminGr9/master/VOIP/conf/sip.conf
curl -o conf/users.conf https://raw.githubusercontent.com/Frodon001/2tl2AdminGr9/master/VOIP/conf/users.conf
curl -o conf/voicemail.conf https://raw.githubusercontent.com/Frodon001/2tl2AdminGr9/master/VOIP/conf/voicemail.conf