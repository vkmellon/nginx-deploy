FROM nginx
COPY htmls/* /usr/share/nginx/html/
COPY auth_file /etc/nginx/
COPY custom_config.conf /etc/nginx/conf.d/
