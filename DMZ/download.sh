
# mise a jour des images dockers
docker pull glemer/wt_dns:latest
docker pull httpd:2.4:latest

# download docker-compose
curl -o docker-compose.yml https://raw.githubusercontent.com/Frodon001/2tl2AdminGr9/master/DMZ/docker-compose.yml
# download DNS files
curl -o bind/named.conf https://raw.githubusercontent.com/Frodon001/2tl2AdminGr9/master/serv_dns/DNS/bind/named.conf
curl -o bind/named.conf.default-zones https://raw.githubusercontent.com/Frodon001/2tl2AdminGr9/master/serv_dns/DNS/bind/named.conf.default-zones
curl -o bind/named.conf.local https://raw.githubusercontent.com/Frodon001/2tl2AdminGr9/master/serv_dns/DNS/bind/named.conf.local
curl -o bind/named.conf.options https://raw.githubusercontent.com/AdrienNini/ProjetAdmin/master/dns/SOA/config/named.conf.options
curl -o bind/db.internal.wt2-9.ephec-ti.be https://raw.githubusercontent.com/Frodon001/2tl2AdminGr9/master/serv_dns/DNS/bind/db.internal.wt2-9.ephec-ti.be
curl -o bind/db.wt2-9.ephec-ti.be https://raw.githubusercontent.com/Frodon001/2tl2AdminGr9/master/serv_dns/DNS/bind/db.wt2-9.ephec-ti.be
# download Vitrine files
curl -o public_html/index.html https://raw.githubusercontent.com/Frodon001/2tl2AdminGr9/master/serv_web/vitrine/public_html/index.html