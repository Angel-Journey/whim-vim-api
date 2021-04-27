#!/bin/bash

# TOKEN="1286b06e8f13c420556863ba708f2229" TITLE="Soccer" TEXT="Playing Keeper" sh curl-scripts/whims/create.sh
# ID="60805c185e823af86f152707"

# ID="608310a433c2a20015fd8f2b" TOKEN="9c7a4027d06ac4bc8719f71a49071a06" TITLE="TESTING" TEXT="Indoor" sh curl-scripts/whims/update.sh

API="https://whim-vim-api.herokuapp.com"
URL_PATH="/whims"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Bearer ${TOKEN}" \
  --data '{
    "whim": {
      "title": "'"${TITLE}"'",
      "text": "'"${TEXT}"'"
    }
  }'

echo
