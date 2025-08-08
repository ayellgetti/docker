#!/bin/bash

DOMAIN=$1
SSL_DIR=$2

if [ -z "$DOMAIN" ] || [ -z "$SSL_DIR" ]; then
  echo "Usage: generate-cert.sh yourdomain.local /path/to/save"
  exit 1
fi

mkdir -p "$SSL_DIR"

openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
  -keyout "$SSL_DIR/$DOMAIN.key" \
  -out "$SSL_DIR/$DOMAIN.crt" \
  -subj "/CN=$DOMAIN"

echo "✅ Certificate generated for $DOMAIN"
