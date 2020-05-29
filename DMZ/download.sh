
# mise a jour des images dockers
docker pull glemer/wt_dns:latest
docker pull glemer/wt_DMZ:latest
docker pull glemer/wt_db:latest
docker pull glemer/wt_voip:latest

mkdir app
mkdir app/b2b
mkdir app/vitrine
mkdir app/internal
mkdir configs
mkdir voip
mkdir voip/conf
mkdir voip/sounds
mkdir bind
mkdir sql-scripts
# download docker-compose
curl -o docker-compose.yml https://raw.githubusercontent.com/Frodon001/2tl2AdminGr9/master/DMZ/docker-compose.yml

# download DNS files
curl -o bind/named.conf https://raw.githubusercontent.com/Frodon001/2tl2AdminGr9/master/DMZ/bind/named.conf
curl -o bind/named.conf.default-zones https://raw.githubusercontent.com/Frodon001/2tl2AdminGr9/master/DMZ/bind/named.conf.default-zones
curl -o bind/named.conf.local https://raw.githubusercontent.com/Frodon001/2tl2AdminGr9/master/DMZ/bind/named.conf.local
curl -o bind/named.conf.options https://raw.githubusercontent.com/Frodon001/2tl2AdminGr9/master/DMZ/bind/named.conf.options
curl -o bind/db.internal.wt2-9.ephec-ti.be https://raw.githubusercontent.com/Frodon001/2tl2AdminGr9/master/DMZ/bind/db.internal.wt2-9.ephec-ti.be
curl -o bind/db.wt2-9.ephec-ti.be https://raw.githubusercontent.com/Frodon001/2tl2AdminGr9/master/DMZ/bind/db.wt2-9.ephec-ti.be

# download web files
curl -o app/b2b/index.php https://raw.githubusercontent.com/Frodon001/2tl2AdminGr9/master/DMZ/app/b2b/index.php
curl -o app/vitrine/index.html https://raw.githubusercontent.com/Frodon001/2tl2AdminGr9/master/DMZ/app/vitrine/index.html
curl -o app/internal/index.php https://raw.githubusercontent.com/Frodon001/2tl2AdminGr9/master/DMZ/app/internal/index.php

# download fichiers DB
curl -o sql-scripts/db-init.sql https://raw.githubusercontent.com/Frodon001/2tl2AdminGr9/master/DMZ/sql-scripts/db-init.sql

#download fichier de config VOIP
curl -o voip/conf/extensions.conf https://raw.githubusercontent.com/Frodon001/2tl2AdminGr9/master/DMZ/voip/conf/extensions.conf
curl -o voip/conf/iax.conf https://raw.githubusercontent.com/Frodon001/2tl2AdminGr9/master/DMZ/voip/conf/iax.conf
curl -o voip/conf/logger.conf https://raw.githubusercontent.com/Frodon001/2tl2AdminGr9/master/DMZ/voip/conf/logger.conf
curl -o voip/conf/queues.conf https://raw.githubusercontent.com/Frodon001/2tl2AdminGr9/master/DMZ/voip/conf/queues.conf
curl -o voip/conf/sip.conf https://raw.githubusercontent.com/Frodon001/2tl2AdminGr9/master/DMZ/voip/conf/sip.conf
curl -o voip/conf/users.conf https://raw.githubusercontent.com/Frodon001/2tl2AdminGr9/master/DMZ/voip/conf/users.conf
curl -o voip/conf/voicemail.conf https://raw.githubusercontent.com/Frodon001/2tl2AdminGr9/master/DMZ/voip/conf/voicemail.conf
curl -o voip/conf/manager.conf https://raw.githubusercontent.com/Frodon001/2tl2AdminGr9/master/DMZ/voip/conf/manager.conf
curl -o voip/conf/features.conf https://raw.githubusercontent.com/Frodon001/2tl2AdminGr9/master/DMZ/voip/conf/features.conf