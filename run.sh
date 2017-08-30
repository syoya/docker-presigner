#!/bin/sh

set -e

mkdir /secret
printf "%s" "$GOOGLE_AUTH_JSON" > /secret/google-auth.json

presigner \
  -account /secret/google-auth.json \
  -bucket $BUCKET \
  -prefix $PREFIX \
  -port $PORT
