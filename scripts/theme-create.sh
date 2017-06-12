#!/bin/bash

API="http://localhost:4741"
URL_PATH="/themes"

curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "theme": {
      "name": "'"${NAME}"'"
    }
  }'

echo

# TOKEN=04NN9dzu9Wy77knTyOux9cwIPRFstY7IaQ4sXP4ImV8=--mov1dQ3kyjsODRb6IgMv5xjf/4kEv/+/NMmeBJoPqbU= NAME=test ./theme-create.sh
