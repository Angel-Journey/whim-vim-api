#!/bin/bash

# EMAIL="test1@testmail.com" PASSWORD="b" sh curl-scripts/auth/sign-up.sh
# ID="608026380b5964f4481d508a"

API="http://localhost:4741"
URL_PATH="/sign-up"

curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "'"${EMAIL}"'",
      "password": "'"${PASSWORD}"'",
      "password_confirmation": "'"${PASSWORD}"'"
    }
  }'

echo
