#!/bin/bash

# ID="60805c185e823af86f152707" TOKEN="1286b06e8f13c420556863ba708f2229" sh curl-scripts/whims/destroy.sh

API="http://localhost:4741"
URL_PATH="/whims"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request DELETE \
  --header "Authorization: Bearer ${TOKEN}"

echo
