FROM ubuntu
MAINTAINER dsk (sekoukaderisc@yahoo.fr)
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y nginx  git
EXPOSE 80
RUN rm -Rf /var/www/html/*
RUN git clone https://github.com/sdiawa/website-exple.git /var/www/html/

#ADD static-website-example/ /var/www/html/
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
