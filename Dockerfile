FROM ubuntu:24.04

RUN apt update && apt install apache2 -y

RUN rm -f /var/www/html/index.html

COPY . /var/www/html/

EXPOSE 80

CMD ["apachectl", "-D", "FOREGROUND"]
