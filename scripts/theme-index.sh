#!/bin/sh

API="http://localhost:4741"
URL_PATH="/themes"

curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"
echo

# TOKEN=qsYVlt39Cb/DSu7+f2JSwB8x0bRwaBJQhlmzFpd8sSo=--IOcoPPo9bojm9qAdAtUvbSSwpuj+OyIr1r9SAR/Ycgg= ./scripts/theme-index.sh
