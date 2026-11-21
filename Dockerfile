FROM httpd:2.4-alpine
COPY public /usr/local/apache2/htdocs/
COPY _httpd.conf /usr/local/apache2/conf/httpd.conf
COPY public/.htaccess-docker /usr/local/apache2/htdocs/.htaccess
