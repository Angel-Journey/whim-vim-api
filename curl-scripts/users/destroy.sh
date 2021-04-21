#!/bin/bash

# ID=608026380b5964f4481d508a sh curl-scripts/users/destroy.sh

API="http://localhost:4741"
URL_PATH="/users"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request DELETE \

echo
