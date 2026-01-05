FROM ubuntu:22.04

RUN apt-get update && \
    apt-get install -y apache2 && \
    apt-get clean

WORKDIR /var/www/html
COPY . .

EXPOSE 80

CMD ["apachectl", "-D", "FOREGROUND"]
