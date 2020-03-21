#run avec : docker-compose up -d mail

#Pour ajouter un compte mail :
docker run --rm \
  -e MAIL_USER=user1@domain.tld \
  -e MAIL_PASS=mypassword \
  -ti tvial/docker-mailserver:latest \
  /bin/sh -c 'echo "$MAIL_USER|$(doveadm pw -s SHA512-CRYPT -u $MAIL_USER -p $MAIL_PASS)"' >> config/postfix-accounts.cf

Les comptes mails se trouvent dans config/postfix-accounts.cf
Les mots de passe sont cryptés avec SHA512-CRYPT

#Ports utilisés :

##25, il reçoit les mails d’autres serveur mail
##143, STARTTLS IMAP client
##587, Soumission par e-mail du client TLS
##995, client TLS / SSL POP3

Remarque: le port 25 sert uniquement à recevoir des e-mails d'autres serveurs de messagerie et non à envoyer des e-mails. On peut utiliser le port 587 pour cela.

