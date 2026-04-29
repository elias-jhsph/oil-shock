FROM nginx:alpine
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY oil-shock.html /usr/share/nginx/html/index.html
COPY oil-shock.html /usr/share/nginx/html/oil-shock.html
COPY archive.html /usr/share/nginx/html/archive.html
COPY archive-apr-13.html /usr/share/nginx/html/archive-apr-13.html
COPY archive-apr-8.html /usr/share/nginx/html/archive-apr-8.html
EXPOSE 8080
