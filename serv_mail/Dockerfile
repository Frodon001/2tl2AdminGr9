from ubuntu:16.04

run apt-get update
run apt-get install -q -y language-pack-fr
run update-locale LANG=fr_BE.UTF-8

run echo mail > /etc/hostname
add etc-hosts.txt /etc/hosts
run chown root:root /etc/hosts

run apt-get install -q -y vim

# Install Postfix.
run echo "postfix postfix/main_mailer_type string Internet site" > preseed.txt
run echo "postfix postfix/mailname string wt2-9.ephec-ti.be" >> preseed.txt
# Use Mailbox format.
run debconf-set-selections preseed.txt
run DEBIAN_FRONTEND=noninteractive apt-get install -q -y postfix

run postconf -e myhostname=mail.wt2-9.ephec-ti.be
run postconf -e mydestination="mail.wt2-9.ephec-ti.be, ephec-ti.be, localhost.localdomain, localhost"
run postconf -e mail_spool_directory="/var/spool/mail/"
run postconf -e mailbox_command=""

# Add a local user to receive mail at florent.wt2-9.ephec-ti.be, with a delivery directory
# (for the Mailbox format).
run useradd -s /bin/bash florent
run mkdir /var/spool/mail/florent
run chown florent:mail /var/spool/mail/florent

add etc-aliases.txt /etc/aliases
run chown root:root /etc/aliases
run newaliases

# Use syslog-ng to get Postfix logs (rsyslog uses upstart which does not seem
# to run within Docker).	
run apt-get install -q -y syslog-ng

expose 25
cmd ["sh", "-c", "service syslog-ng start ; service postfix start ; tail -F /var/log/mail.log"]
