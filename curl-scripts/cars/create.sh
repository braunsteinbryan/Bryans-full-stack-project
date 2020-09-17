#!/bin/bash

API="http://localhost:4741"
URL_PATH="/create-a-car"

curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Bearer ${TOKEN}" \
  --data '{
    "car": {
      "year": "'"${YEAR}"'",
      "brand": "'"${BRAND}"'",
      "model": "'"${MODEL}"'"
    }
  }'

echo
