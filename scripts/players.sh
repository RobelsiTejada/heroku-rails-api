API="${API_ORIGIN:-https://api.stattleship.com}"
URL_PATH="/football/nfl/player_season_stats"
  curl "${API}${URL_PATH}" \
    --include \
    --request GET \
    --header "Content-Type: application/json" \
    --header "Authorization: Token token=676decc240402bce97668ada571dd8b3" \
    --header "Accept: application/vnd.stattleship.com; version=1" \
    --data '{
       "player_season_stats": {
         "per_page": "40"
         "page":
         "season_id": "'"${SEASON_ID}"'"
         "team_id": "'"${TEAM_ID}"'"
         "player_id": "'"${PLAYER_ID}"'"
         "interval_type":
         "on":
    }
  }'


  echo
