#!/bin/bash

# TOKEN="1286b06e8f13c420556863ba708f2229" OLDPW="b" NEWPW="NEWer" sh curl-scripts/auth/change-password.sh

API="http://localhost:4741"
URL_PATH="/change-password"

curl "${API}${URL_PATH}/" \
  --include \
  --request PATCH \
  --header "Authorization: Bearer ${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "passwords": {
      "old": "'"${OLDPW}"'",
      "new": "'"${NEWPW}"'"
    }
  }'

echo
