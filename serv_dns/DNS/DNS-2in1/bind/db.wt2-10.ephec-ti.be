$ORIGIN wt2-10.ephec-ti.be
$TTL    604800
@       IN      SOA     ns.wt2-10.ephec-ti.be. admin.wt2-10.ephec-ti.be. (
                     2006020201 ; Serial
                         604800 ; Refresh
                          86400 ; Retry
                        2419200 ; Expire
                         604800); Negative Cache TTL
;

; name servers - NS record
@				IN	NS			ns.wt2.ephec-ti.be.

; name servers - A record
ns 				IN	A				localhost:8080

; web services
serverWeb			IN	A		localhost:8080
www					IN	CNAME	serverWeb

; mail services