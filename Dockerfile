FROM nginx:latest
RUN rm -f /etc/nginx/conf.d/*

COPY nginx.conf /etc/nginx/nginx.conf
COPY 403.html /var/www/dummy/403.html

CMD ["/usr/sbin/nginx", "-g", "daemon off;"] 
