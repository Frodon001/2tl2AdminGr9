

#
# https://www.networklab.fr/configuration-basique-dasterisk/
#

#Download base image ubuntu 16.04
FROM ubuntu:18.04

# Update Ubuntu Software repository and install asterisk
RUN apt-get update && apt-get -y install asterisk

RUN sed -i "s/rtpstart=10000/rtpstart=15000/g" /etc/asterisk/rtp.conf
RUN sed -i "s/rtpend=20000/rtpend=15010/g" /etc/asterisk/rtp.conf

WORKDIR /etc/asterisk

VOLUME /etc/asterisk
# VOLUME /var/lib/asterisk/moh

EXPOSE 5060 5060/udp
EXPOSE 5060 5060/tcp
EXPOSE 15000 15000/udp
EXPOSE 15001 15001/udp
EXPOSE 15002 15002/udp
EXPOSE 15003 15003/udp
EXPOSE 15004 15004/udp
EXPOSE 15005 15005/udp
EXPOSE 15006 15006/udp
EXPOSE 15007 15007/udp
EXPOSE 15008 15008/udp
EXPOSE 15009 15009/udp
EXPOSE 15010 15010/udp

CMD ["/usr/sbin/asterisk", "-f"]