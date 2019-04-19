FROM nginx

RUN mkdir /etc/nginx/conf.d/http
RUN mkdir /etc/nginx/conf.d/https
RUN mkdir /etc/nginx/conf.d/ssl

COPY ./config/nginx.conf.template /etc/nginx/nginx.conf.template
COPY ./config/http/ /etc/nginx/conf.d/http/
COPY ./config/https/ /etc/nginx/conf.d/https/
