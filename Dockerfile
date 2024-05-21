FROM ubuntu:latest

WORKDIR /home/usuario/

RUN apt-get update -y
RUN apt-get install -y tzdata 
RUN apt-get install -y apache2 git php
RUN rm -rf /var/www/html/*

RUN git clone https://github.com/andrezrv/wp-random-cats.git /var/www/html

EXPOSE 80

CMD ["apache2ctl", "-D", "FOREGROUND"]

