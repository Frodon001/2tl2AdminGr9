
# mise a jour des images dockers
docker pull glemer/wt_dns:latest
docker pull glemer/wt_db:latest

mkdir app/b2b
mkdir app/vitrine
mkdir configs
mkdir sql-scripts
# download docker-compose
curl -o docker-compose.yml https://raw.githubusercontent.com/Frodon001/2tl2AdminGr9/master/DMZ/docker-compose.yml
# download DNS files
curl -o bind/named.conf https://raw.githubusercontent.com/Frodon001/2tl2AdminGr9/master/serv_dns/DNS/bind/named.conf
curl -o bind/named.conf.default-zones https://raw.githubusercontent.com/Frodon001/2tl2AdminGr9/master/serv_dns/DNS/bind/named.conf.default-zones
curl -o bind/named.conf.local https://raw.githubusercontent.com/Frodon001/2tl2AdminGr9/master/serv_dns/DNS/bind/named.conf.local
curl -o bind/named.conf.options https://raw.githubusercontent.com/AdrienNini/ProjetAdmin/master/dns/SOA/config/named.conf.options
curl -o bind/db.internal.wt2-9.ephec-ti.be https://raw.githubusercontent.com/Frodon001/2tl2AdminGr9/master/serv_dns/DNS/bind/db.internal.wt2-9.ephec-ti.be
curl -o bind/db.wt2-9.ephec-ti.be https://raw.githubusercontent.com/Frodon001/2tl2AdminGr9/master/serv_dns/DNS/bind/db.wt2-9.ephec-ti.be
curl -o configs/app.conf https://raw.githubusercontent.com/Frodon001/2tl2AdminGr9/master/Web2in1/configs/app.conf
curl -o configs/php.ini https://raw.githubusercontent.com/Frodon001/2tl2AdminGr9/master/Web2in1/configs/php.ini
# download web files
curl -o app/b2b/index.php https://raw.githubusercontent.com/Frodon001/2tl2AdminGr9/master/Web2in1/app/b2b/index.php
curl -o app/vitrine/index.html https://raw.githubusercontent.com/Frodon001/2tl2AdminGr9/master/Web2in1/app/vitrine/index.html
# download fichiers DB
curl -o sql-scripts/db-init.sql https://raw.githubusercontent.com/Frodon001/2tl2AdminGr9/master/database/sql-scripts/db-init.sqlnit.sql https://raw.githubusercontent.com/Frodon001/2tl2AdminGr9/master/database/sql-scripts/db-init.sql