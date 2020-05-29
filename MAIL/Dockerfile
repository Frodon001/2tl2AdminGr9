FROM ubuntu:latest


ENV DEBIAN_FRONTEND noninteractive 

RUN \
apt-get update && apt-get install -y postfix postfix-mysql mailutils dovecot-core dovecot-imapd dovecot-pop3d dovecot-lmtpd dovecot-mysql nano \
&&rm /etc/postfix/main.cf \
&&rm /etc/postfix/master.cf \
&&rm /etc/dovecot/dovecot.conf \
&&rm /etc/dovecot/conf.d/10-mail.conf \
&&rm /etc/dovecot/conf.d/10-auth.conf \
&&rm /etc/dovecot/conf.d/auth-sql.conf.ext \
&&rm /etc/dovecot/dovecot-sql.conf.ext \
&&rm /etc/dovecot/conf.d/10-master.conf \
&&rm /etc/dovecot/conf.d/10-ssl.conf 


#copie des différents fichiers de conf
COPY ./postfix/main.cf /etc/postfix/
COPY ./postfix/master.cf /etc/postfix/
COPY ./postfix/mysql-virtual-mailbox-domains.cf /etc/postfix/
COPY ./postfix/mysql-virtual-mailbox-maps.cf /etc/postfix/
COPY ./postfix/mysql-virtual-alias-maps.cf /etc/postfix/
COPY ./postfix/mysql-virtual-email2email.cf /etc/postfix/


COPY ./dovecot/dovecot.conf /etc/dovecot/
COPY ./dovecot/10-mail.conf /etc/dovecot/conf.d/
COPY ./dovecot/10-auth.conf /etc/dovecot/conf.d/
COPY ./dovecot/auth-sql.conf.ext /etc/dovecot/conf.d/
COPY ./dovecot/dovecot-sql.conf.ext /etc/dovecot/
COPY ./dovecot/10-master.conf /etc/dovecot/conf.d/
COPY ./dovecot/10-ssl.conf /etc/dovecot/conf.d/

COPY ./certs/wt2-9.ephec-ti.be.crt /etc/ssl/
COPY ./certs/wt2-9.ephec-ti.be.key /etc/ssl/

RUN chmod -R o-rwx /etc/postfix
RUN mkdir -p /var/mail/vhosts/wt2-9.ephec-ti.be
RUN groupadd -g 5000 vmail
RUN useradd -g vmail -u 5000 vmail -d /var/mail
RUN chown -R vmail:vmail /var/mail
RUN chown -R vmail:dovecot /etc/dovecot
RUN chmod -R o-rwx /etc/dovecot
 

RUN /etc/init.d/postfix restart
RUN /etc/init.d/dovecot restart

#Ports exposes
EXPOSE 25 143 993 110 995 587

CMD ["sh","-c","postfix start-fg","dovecot start-fg"]