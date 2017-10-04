#!/bin/bash

API="${API_ORIGIN:-https://fantasysportsleague.herokuapp.com}"
URL_PATH="/players"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Authorization: Token token=$TOKEN" \
  --header "Content-Type: application/json" \
  --data '{
    "players": {
      "player":
    }
  }'

echo
