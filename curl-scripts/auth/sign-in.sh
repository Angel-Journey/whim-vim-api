#!/bin/bash

# EMAIL="test1@testmail.com" PASSWORD="b" sh curl-scripts/auth/sign-in.sh
# TOKEN="ceb06db4bea017cc08e0df06fef8e337"

API="http://localhost:4741"
URL_PATH="/sign-in"

curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "'"${EMAIL}"'",
      "password": "'"${PASSWORD}"'"
    }
  }'

echo
