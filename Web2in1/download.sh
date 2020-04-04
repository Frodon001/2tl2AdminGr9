
# mise a jour des images dockers
docker pull glemer/wt_web2in1:latest
# download docker-compose
curl -o docker-compose.yml https://raw.githubusercontent.com/Frodon001/2tl2AdminGr9/master/DMZ/docker-compose.yml
# download DNS files
curl -o bind/named.conf https://raw.githubusercontent.com/Frodon001/2tl2AdminGr9/master/serv_dns/DNS/bind/named.conf