FROM nginx:1.11.6
MAINTAINER Christoffer Buchholz "chris@chrisbuchholz.me"

RUN rm /etc/nginx/nginx.conf /etc/nginx/mime.types
COPY nginx.conf /etc/nginx/nginx.conf
COPY basic.conf /etc/nginx/basic.conf
COPY mime.types /etc/nginx/mime.types
COPY default /etc/nginx/sites-enabled/default
COPY directive-only /etc/nginx/directive-only
COPY location /etc/nginx/location

EXPOSE 80

CMD ["nginx"]
