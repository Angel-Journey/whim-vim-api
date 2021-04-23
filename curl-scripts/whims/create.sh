#!/bin/sh

# TOKEN="9c7a4027d06ac4bc8719f71a49071a06" TITLE="Soccer" TEXT="Playing Keeper" OWNER="608179c69a15fb0015f0da1d" sh curl-scripts/whims/create.sh

# ID="608310a433c2a20015fd8f2b"

# TOKEN="9c7a4027d06ac4bc8719f71a49071a06" TITLE="Video Games" TEXT="Playing Rocket League" OWNER="608179c69a15fb0015f0da1d" sh curl-scripts/whims/create.sh

# ID="608310ca33c2a20015fd8f2c"

API="https://whim-vim-api.herokuapp.com"
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
