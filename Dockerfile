FROM oraclelinux:8.3
MAINTAINER sankalita.chakraborty@oracle.com
RUN dnf install httpd -y
COPY index.html /var/www/html/index.html
COPY friends.jpg /var/www/html/friends.jpg
EXPOSE 80
ENTRYPOINT httpd -DFOREGROUND
