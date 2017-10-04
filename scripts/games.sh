#!/bin/bash

API="${API_ORIGIN:-https://fantasysportsleague.herokuapp.com}"
URL_PATH="/games"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"

echo
