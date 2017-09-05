#!/bin/bash

API="${API_ORIGIN:-https://fantasysportsleague.herokuapp.com}"
URL_PATH="/sign-out"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request DELETE \
  --header "Authorization: Token token=$TOKEN"
  --header "Content-Type: application/json" \

echo
