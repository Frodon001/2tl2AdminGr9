FROM ubuntu:updated
RUN apt-get install -y appache2
RUN apt-get install apache2-utils
expose 80
ENTRYPOINT ["apache2ctl"]
CMD ["-DFOREGROUND"]
