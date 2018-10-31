FROM ubuntu:16.04
MAINTAINER SJPARK
LABEL purpose="hands on lab"
RUN apt-get update
RUN apt-get install apache2 -y
WORKDIR /var/www/html
RUN ["/bin/bash", "-c", "echo welcome to docker aouto-build!! >> test.html"]
EXPOSE 80
CMD ["apachectl", "-DEFOREGROUND"]
