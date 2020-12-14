FROM httpd:2.4
RUN  apt-get install sshpass
COPY ./ /usr/local/apache2/htdocs/
