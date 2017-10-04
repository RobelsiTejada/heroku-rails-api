API="${API_ORIGIN:-https://newsapi.org/v1/articles?source=techcrunch&apiKey=49a804e7a8fb430fbb153a7528609102}"
  curl "${API}" \
    --include \
    --request GET \
    --header "Content-Type: application/json" \
    --header "Authorization: Token token=676decc240402bce97668ada571dd8b3" \
    --data


  echo
