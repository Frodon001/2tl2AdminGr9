FROM ubuntu:latest

MAINTAINER dev<dev@localhost.com> 


ENV DEBIAN_FRONTEND noninteractive 
RUN apt-get update && apt-get install -y --no-install-recommends apt-utils
RUN echo "postfix postfix/main_mailer_type string Internet site" > preseed.txt
RUN echo "postfix postfix/mailname string wt2-9.ephec-ti.be" >> preseed.txt
RUN debconf-set-selections preseed.txt
RUN DEBIAN_FRONTEND=noninteractive apt-get install -q -y postfix

RUN echo mail > /etc/hostname
ADD etc-hosts.txt /etc/hosts
RUN chown root:root /etc/hosts

RUN apt-get -y install postfix sasl2-bin opendkim opendkim-tools mailutils vim 

RUN postconf -e 'myhostname=mail.wt2-9.ephec-ti.be'
RUN postconf -e 'mydestination=mail.wt2-9.ephec-ti.be, ephec-ti.be, localhost.localdomain, localhost'
RUN postconf -e mail_spool_directory="/var/spool/mail/"
RUN postconf -e mailbox_command=""
#RUN postconf -e compatibility_level=2
RUN postconf -e 'smtp_sasl_auth_enable=yes' 
RUN postconf -e 'smtp_sasl_password_maps=hash:/etc/postfix/sasl_passwd' 
RUN postconf -e 'smtp_sasl_security_options =' 
RUN echo "wt2-9.ephec-ti.be devuser@wt2-9.ephec-ti.be" > /etc/postfix/sasl_passwd 
RUN postmap /etc/postfix/sasl_passwd 

#RUN postconf -e 's/inet_interfaces=localhost/inet_interfaces = all/'

RUN useradd -s /bin/bash florent
RUN mkdir /var/spool/mail/florent
RUN chown florent:mail /var/spool/mail/florent


ADD etc-aliases.txt /etc/aliases
RUN chown root:root /etc/aliases
RUN newaliases


#ADD postfix.sh /opt/postfix.sh 
#ADD supervisord.conf /etc/supervisor/conf.d/supervisord.conf 
EXPOSE 22 25 110 143 465 587 993 995 
CMD ["sh","-c","postfix start-fg"] 



