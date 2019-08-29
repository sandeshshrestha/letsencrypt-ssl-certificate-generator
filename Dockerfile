FROM alpine:latest

ENV CERT_EMAIL=""
ENV CERT_DOMAIN=""

VOLUME /etc/letsencrypt /var/lib/letsencrypt

RUN apk add --no-cache certbot

COPY generate /bin