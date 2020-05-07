$ORIGIN wt2-9.ephec-ti.be.
$TTL    604800
@       IN      SOA     ns.wt2-9.ephec-ti.be. admin.wt2-9.ephec-ti.be. (
                     2006020201 ; Serial
                         43200 ; Refresh
                          7200 ; Retry
                        2419200 ; Expire
                         86400); Negative Cache TTL
;

; name servers - NS record
@				IN	NS			ns.wt2-9.ephec-ti.be.
@               IN  MX          10      mail
@               IN  TXT         "v=spf1 a mx ip4:51.178.41.95 include:_spf.google.com ~all"

; name servers - A record
ns 		        	IN	A	51.178.41.108

; web services
www                 IN  A       51.178.41.108
b2b                 IN  A       51.178.41.108
internal			IN	A   	51.178.41.108

; mail services
mail                IN  A   51.178.41.95
smtp                IN  CNAME   mail
pop                 IN  CNAME   mail
imap                IN  CNAME   mail
_dmarc              IN  TXT        ("v=DMARC1;p=none;sp=reject;pct=10;"
    "adkim=r;aspf=r;fo=1;ri=86400")
mail._domainkey    IN    TXT    ( "v=DKIM1; h=sha256; k=rsa; "
      "p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA8NEwrDVGz9VQqtfT+s1KwpKqMo3fORiaOTbrpKvdyXB1cJQKButmLCV12j7RugB0xHTY6hExVkPmABy5boEkZIISJTlE/gVhKaa4SCvYq5vdLYO2O1YLvSjPkrWxg20PlXtHD3LSE6GC6V9TskCNWF2P8gqf8LBrGGN79lSzmyQl0ikYK67oVyaj6T0XwUzTocDzX5tB1mHSOi"
      "OTCQKkR9OI01WOoS66zizWsyGjIZB3Z6EdCGaGsWLwUlP4laQHnOBaC0c6MTRDw7m941cWCsSkQ5FtJLqRv3ZCJw14+kI/Q23z+6maOjw4FdXfJmlB4hAVjeP2zNf0o7G9okGD9wIDAQAB" )  ; ----- DKIM key mail for wt2-9.ephec-ti.be

mail IN TXT "v=spf1 a mx ip4:51.178.41.95 ~all"

; voip service
_sip._udp		SRV	0	0	5060	sip
_sip._tcp		SRV 0	0	5060	sip
sip				IN	A	51.178.41.108