#!/bin/bash

API="${API_ORIGIN:-https://fantasysportsleague.herokuapp.com}"
URL_PATH="/examples"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Authorization: Token token=$TOKEN" \
  --header "Content-Type: application/json" \
  --data '{
    "example": {
      "text": "'"${TEXT}"'"
    }
  }'

echo
