#!/bin/bash

API="http://localhost:4741"
URL_PATH="/update-car"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
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
