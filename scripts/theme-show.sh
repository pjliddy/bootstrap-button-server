#!/bin/bash

API="http://localhost:4741"
URL_PATH="/themes"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request GET \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \

echo

# TOKEN=qsYVlt39Cb/DSu7+f2JSwB8x0bRwaBJQhlmzFpd8sSo=--IOcoPPo9bojm9qAdAtUvbSSwpuj+OyIr1r9SAR/Ycgg= ID=593eb2746d39231fe9ceb386 ./scripts/theme-show.sh
