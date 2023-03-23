FROM nginx:latest
RUN rm -f /etc/nginx/conf.d/*

COPY nginx.conf /etc/nginx/nginx.conf

CMD CMD sed -i -e 's/$PORT/'"$PORT"'/g' /etc/nginx/nginx.conf && nginx -g 'daemon off;'
