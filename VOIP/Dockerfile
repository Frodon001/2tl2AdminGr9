
#Download base image ubuntu 16.04
FROM ubuntu:16.04

# Update Ubuntu Software repository and install asterisk
RUN apt-get update && apt-get -y install asterisk

RUN sed -i "s/rtpstart=10000/rtpstart=16384/g" /etc/asterisk/rtp.conf
RUN sed -i "s/rtpend=20000/rtpend=16394/g" /etc/asterisk/rtp.conf

WORKDIR /etc/asterisk

VOLUME /etc/asterisk
VOLUME /var/lib/asterisk/moh

EXPOSE 5060 5060/udp
EXPOSE 5060 5060/tcp

CMD ["/usr/sbin/asterisk", "-f"]