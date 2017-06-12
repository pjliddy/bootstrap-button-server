#!/bin/sh

API="http://localhost:4741"
URL_PATH="/themes"

curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=0qubzcwD7Zjr+Eyg11K3Sg=="

echo
