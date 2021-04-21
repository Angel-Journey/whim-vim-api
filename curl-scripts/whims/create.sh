#!/bin/sh

# TOKEN="1286b06e8f13c420556863ba708f2229" TITLE="Soccer" TEXT="Playing Keeper" OWNER="608026380b5964f4481d508a" sh curl-scripts/whims/create.sh

# ID="60806069967546f91e9560df"

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
