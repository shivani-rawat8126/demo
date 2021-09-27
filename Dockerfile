FROM ubuntu:18.04
ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update
RUN apt install -y apache2
RUN apt-get install -y php libapache2-mod-php php-mysql

WORKDIR /var/www/html/
 
COPY . /var/www/html/

EXPOSE 80

CMD apachectl -D FOREGROUND


