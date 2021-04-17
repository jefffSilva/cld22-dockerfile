FROM quay.io/ocsci/fedora
RUN dnf -y update && dnf -y install httpd git  && dnf clean all
RUN echo "Hello CLD22" > /var/www/html/index.html
EXPOSE 80
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
