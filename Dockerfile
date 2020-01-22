FROM hypoport/httpd-cgi
MAINTAINER Hypoport

RUN apk update ; apk add socat bind-tools

COPY metrics /usr/local/apache2/cgi-bin/metrics

