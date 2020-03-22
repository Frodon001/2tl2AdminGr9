$ORIGIN wt2-9.ephec-ti.be
$TTL    604800
@       IN      SOA     ns.wt2-9.ephec-ti.be. admin.wt2-9.ephec-ti.be. (
                     2006020201 ; Serial
                         604800 ; Refresh
                          86400 ; Retry
                        2419200 ; Expire
                         604800); Negative Cache TTL
;

; VPS
VpsGuillaume			IN	A		51.178.41.108
VpsArnaud               IN  A       51.178.41.107
VpsFlorent              IN  A       51.178.41.95

; name servers - NS record
@				IN	NS			ns.wt2-9.ephec-ti.be.
@               IN  MX          10      mail

; name servers - A record
ns 				IN	CNAME			VpsGuillaume

; name servers - A record
ns 		        	IN	CNAME	VpsGuillaume

; web services
www					IN	CNAME	VpsGuillaume

; mail services
mail                IN  CNAME   VpsFlorent
smtp                IN  CNAME   mail
pop3                IN  CNAME   mail
imap                IN  CNAME   mail