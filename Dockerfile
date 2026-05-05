FROM ubuntu:24.04

RUN apt update && apt install apache2 -y

COPY . /var/www/html/Learning_deployment

EXPOSE 80

CMD ["apachectl", "-D", "FOREGROUND"]
