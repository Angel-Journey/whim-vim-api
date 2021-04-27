#!/bin/bash

# ID="608310ca33c2a20015fd8f2c" TOKEN="9c7a4027d06ac4bc8719f71a49071a06" sh curl-scripts/whims/destroy.sh

API="https://whim-vim-api.herokuapp.com"
URL_PATH="/whims"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request DELETE \
  --header "Authorization: Bearer ${TOKEN}"

echo
