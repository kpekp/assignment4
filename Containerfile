FROM fedora:latest
RUN dnf upgrade -yqq 
RUN dnf install -yqq tuxpaint vim httpd 
ADD myinfo.html /var/www/html/
EXPOSE port 80/TCP
ENTRYPOINT /usr/sbin/httpd -DFOREGROUND
