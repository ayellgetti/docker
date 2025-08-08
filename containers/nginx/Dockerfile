FROM nginx:alpine

RUN apk add --no-cache openssl bash

# Copy custom NGINX config (using generated cert paths)
COPY containers/nginx/nginx.conf /etc/nginx/conf.d/default.conf

# Script to generate certs dynamically
COPY containers/nginx/generate-cert.sh /usr/local/bin/generate-cert.sh
RUN chmod +x /usr/local/bin/generate-cert.sh

WORKDIR /etc/ssl/certs

# Default command: generate cert for example.local then start nginx
# CMD /usr/local/bin/generate-cert.sh "${DOMAIN:-example.local}" /etc/ssl/certs && nginx -g 'daemon off;'

