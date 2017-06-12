#!/bin/bash

API="http://localhost:4741"
URL_PATH="/themes"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request GET \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \

echo

# TOKEN=04NN9dzu9Wy77knTyOux9cwIPRFstY7IaQ4sXP4ImV8=--mov1dQ3kyjsODRb6IgMv5xjf/4kEv/+/NMmeBJoPqbU= ID=593eb1d923e2fb13e9c26e5f ./scripts/theme-show.sh
