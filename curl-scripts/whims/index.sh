#!/bin/sh

# TOKEN="9c7a4027d06ac4bc8719f71a49071a06" sh curl-scripts/whims/index.sh

API="https://whim-vim-api.herokuapp.com"
URL_PATH="/whims"

curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Bearer ${TOKEN}"

echo
