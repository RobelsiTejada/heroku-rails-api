PI="${API_ORIGIN:-https://api.stattleship.com/baseball/mlb/}"
URL_PATH="/player_season_stats"
  curl "${API}${URL_PATH}" \
    --include \
    --request GET \
    --header "Content-Type: application/json" \
    --header "Authorization: Token token=676decc240402bce97668ada571dd8b3" \
    --header "Accept: application/vnd.stattleship.com; version=1" \


  echo
