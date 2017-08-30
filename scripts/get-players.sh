PI="${API_ORIGIN:-https://api.stattleship.com}"
URL_PATH="/baseball/mlb/player_season_stats"
  curl "${API}${URL_PATH}" \
    --include \
    --request GET \
    --header "Content-Type: application/json" \
    --header "Authorization: Token token=676decc240402bce97668ada571dd8b3" \
    --header "Accept: application/vnd.stattleship.com; version=1" \
    --data '{
       "player_season_stats": {
      "player_id": "'mlb-david-ortiz'"
    }
  }'


  echo
