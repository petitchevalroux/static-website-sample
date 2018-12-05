FROM nginx:latest
COPY htdocs /usr/share/nginx/html
COPY nginx/disable-cache.conf /etc/nginx/conf.d/disable-cache.conf
