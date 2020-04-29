FROM ubuntu:latest

RUN apt-get update && apt-get install -y courier-base courier-authdaemon courier-authlib-mysql courier-imap courier-pop

COPY ./courier/authdaemonrc /etc/courier
COPY ./postfix/authmysqlrc /etc/courier


EXPOSE 143

CMD ["sh","-c","courier start-fg"] 

