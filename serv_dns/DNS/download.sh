curl -o docker-compose.yml https://raw.githubusercontent.com/Frodon001/2tl2AdminGr10/master/serv_dns/DNS/docker-compose.yml
mkdir bind
curl -o bind/named.conf https://raw.githubusercontent.com/Frodon001/2tl2AdminGr10/master/serv_dns/DNS/bind/named.conf
curl -o bind/named.conf.default-zones https://raw.githubusercontent.com/Frodon001/2tl2AdminGr10/master/serv_dns/DNS/bind/named.conf.default-zones
curl -o bind/named.conf.local https://raw.githubusercontent.com/Frodon001/2tl2AdminGr10/master/serv_dns/DNS/bind/named.conf.local
curl -o bind/named.conf.options https://github.com/Frodon001/2tl2AdminGr10/blob/master/serv_dns/DNS/bind/named.conf.options
curl -o bind/db.internal.wt1.ephec-ti.be https://raw.githubusercontent.com/Frodon001/2tl2AdminGr10/master/serv_dns/DNS/bind/db.internal.wt2-10.ephec-ti.be
curl -o bind/db.wt1.ephec-ti.be https://raw.githubusercontent.com/Frodon001/2tl2AdminGr10/master/serv_dns/DNS/bind/db.wt2-10.ephec-ti.be
