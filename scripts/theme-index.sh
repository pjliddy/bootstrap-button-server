#!/bin/sh

API="http://localhost:4741"
URL_PATH="/themes"

curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"
echo

# TOKEN=04NN9dzu9Wy77knTyOux9cwIPRFstY7IaQ4sXP4ImV8=--mov1dQ3kyjsODRb6IgMv5xjf/4kEv/+/NMmeBJoPqbU= ./theme-index.sh
