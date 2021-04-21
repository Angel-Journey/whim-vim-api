#!/bin/sh

# TOKEN="ceb06db4bea017cc08e0df06fef8e337" TITLE="Soccer" TEXT="Playing Keeper" OWNER="608026380b5964f4481d508a" sh curl-scripts/whims/create.sh

# ID="608080d4f64881fb446b511a"

API="http://localhost:4741"
URL_PATH="/whims"

curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Bearer ${TOKEN}" \
  --data '{
    "whim": {
      "title": "'"${TITLE}"'",
      "text": "'"${TEXT}"'",
      "owner": "'"${OWNER}"'"
    }
  }'

echo
