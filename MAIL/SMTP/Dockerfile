FROM ubuntu:latest



ENV DEBIAN_FRONTEND noninteractive 
RUN apt-get update && apt-get install -y --no-install-recommends apt-utils
RUN echo "postfix postfix/main_mailer_type string Internet site" > preseed.txt
RUN echo "postfix postfix/mailname string wt2-9.ephec-ti.be" >> preseed.txt
RUN debconf-set-selections preseed.txt
RUN DEBIAN_FRONTEND=noninteractive apt-get install -q -y postfix

RUN echo mail > /etc/hostname
ADD etc-hosts.txt /etc/hosts
RUN chown root:root /etc/hosts

RUN apt-get -y install postfix-mysql mailutils vim 





COPY ./postfix/main.cf /etc/postfix
COPY ./postfix/master.cf /etc/postfix
COPY ./postfix/mysql-virtual_aliases_comptes.cf /etc/postfix
COPY ./postfix/mysql-virtual_aliases.cf /etc/postfix
COPY ./postfix/mysql-virtual_comptes.cf /etc/postfix
COPY ./postfix/mysql-virtual_domaines.cf /etc/postfix
COPY ./postfix/mysql-virtual_quotas.cf /etc/postfix





RUN groupadd -g 5000 vmail
RUN useradd -g vmail -u 5000 vmail -d /var/spool/vmail -m
RUN chmod u=rw,g=r,o= /etc/postfix/mysql-virtual_*.cf
RUN chgrp postfix /etc/postfix/mysql-virtual_*.cf


ADD etc-aliases.txt /etc/aliases
RUN chown root:root /etc/aliases
RUN newaliases


#ADD postfix.sh /opt/postfix.sh 
#ADD supervisord.conf /etc/supervisor/conf.d/supervisord.conf 
EXPOSE 22 25 
CMD ["sh","-c","postfix start-fg"] 