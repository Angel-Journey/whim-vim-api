#!/bin/sh

# TOKEN="1286b06e8f13c420556863ba708f2229" sh curl-scripts/whims/index.sh

API="http://localhost:4741"
URL_PATH="/whims"

curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Bearer ${TOKEN}"

echo
