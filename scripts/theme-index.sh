#!/bin/sh

API="http://localhost:4741"
URL_PATH="/themes"

curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"
echo

# TOKEN=vPBFYciF3ob86Lu49F3vbToaPXG4KhqK45FH0XF4v3g=--OpoiHM5TYsHmNTAx3/zWifFLlnS6IqGfyo/5yzHI138= ./scripts/theme-index.sh
