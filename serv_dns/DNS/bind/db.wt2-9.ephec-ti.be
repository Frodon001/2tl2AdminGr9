$ORIGIN wt2-9.ephec-ti.be.
$TTL    604800
@       IN      SOA     ns.wt2-9.ephec-ti.be. admin.wt2-9.ephec-ti.be. (
                     2006020201 ; Serial
                         604800 ; Refresh
                          86400 ; Retry
                        2419200 ; Expire
                         604800); Negative Cache TTL
;

; name servers - NS record
@				IN	NS			ns.wt2-9.ephec-ti.be.
@               IN  MX          10      mail

; name servers - A record
ns 		        	IN	A	51.178.41.108

; web services
servWeb             IN  A       51.178.41.108
www					IN	CNAME	servWeb

; mail services
mail                IN  CNAME   51.178.41.95
smtp                IN  CNAME   mail
pop3                IN  CNAME   mail
imap                IN  CNAME   mail