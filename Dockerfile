FROM ubuntu:latest

ENV CERT_EMAIL=""
ENV CERT_DOMAIN=""

VOLUME /etc/letsencrypt /var/lib/letsencrypt

RUN apt-get update && \
    apt-get install certbot -y && \
	apt-get clean && rm -rf /var/lib/apt/lists/*

COPY generate /bin