#!/bin/bash

API="${API_ORIGIN:-https://fantasysportsleague.herokuapp.com/}"
URL_PATH="/sign-in"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Accept: application/vnd.heroku+json; version=3" \
  --data '{
    "credentials": {
      "email": "'"${EMAIL}"'",
      "password": "'"${PASSWORD}"'"
    }
  }'

echo
