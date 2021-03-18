FROM nginx
COPY auth_file /etc/nginx/
COPY custom_config.conf /etc/nginx/conf.d/
