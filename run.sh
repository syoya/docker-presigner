#!/bin/sh

set -e

mkdir /secret
printf "%s" "$GOOGLE_AUTH_JSON" > /secret/google-auth.json

echo "------------------"
echo $BUCKET
echo $PREFIX
echo $PORT
echo "------------------"

presigner \
  -account /secret/google-auth.json \
  -bucket $BUCKET \
  -prefix $PREFIX \
  -port $PORT \
  -verbose
