#!/bin/bash

# ID="608080d4f64881fb446b511a" TOKEN="ceb06db4bea017cc08e0df06fef8e337" sh curl-scripts/whims/destroy.sh

API="http://localhost:4741"
URL_PATH="/whims"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request DELETE \
  --header "Authorization: Bearer ${TOKEN}"

echo
