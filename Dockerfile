FROM nimmis/alpine-apache

EXPOSE 80

CMD nc -l -p 80
