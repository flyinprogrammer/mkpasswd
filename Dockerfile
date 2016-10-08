FROM ubuntu:latest
MAINTAINER Alan Scherger <flyinprogrammer@gmail.com>

RUN DEBIAN_FRONTEND=noninteractive && \
    apt-get update -y && \
    apt-get install -y whois && \
    apt-get clean -y && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* 

ENTRYPOINT ["/usr/bin/mkpasswd"]
CMD ["-m", "sha-512"]
