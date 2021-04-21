#!/bin/bash

# EMAIL="test1@testmail.com" PASSWORD="NEWer" sh curl-scripts/auth/sign-in.sh
# TOKEN="1286b06e8f13c420556863ba708f2229"

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
