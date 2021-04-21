#!/bin/bash

# ID=6080809ff64881fb446b5119 sh curl-scripts/users/destroy.sh

API="http://localhost:4741"
URL_PATH="/users"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request DELETE \

echo
