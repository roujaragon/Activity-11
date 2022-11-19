
FROM ubuntu
MAINTAINER rouj <qrraragon@tip.edu.ph>

#Skip prompts
ARG DEBIAN_FRONTEND=noninteractive

#Update Server
RUN apt-get -y update

#Update packages
RUN apt packages; apt dist-upgrade -y

#Install packages
RUN apt install -y apache2 mariadb-server

#Set entrypoint
ENTRYPOINT apache2ctl -D FOREGROUND



