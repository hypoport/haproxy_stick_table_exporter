# Haproxy stick table exporter

This repository contains a shell script which queries the stick tables
of one (multple) haproxies and outputs the data in a prometheus readable exporter format.

The script is run as a cgi script by a apache httpd.

The script needs access to the haproxy stats socket via a TCP port
examples haproxy config:
```
  stats socket ipv4@10.0.0.10:9999 level operator
```

The comma separated list of the haproxies need to be defined
as en environment variable
    "CGI_ENV_HAPROXY_HOSTS=haproxy:9999"
    "CGI_ENV_HAPROXY_HOSTS=haproxy:9999,1.2.3.4:1234"

