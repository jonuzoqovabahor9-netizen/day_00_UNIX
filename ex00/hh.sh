#!/bin/sh

VACANCY="${*:-datas cientist}"
VV=$(echo "$VACANCY" | sed 's/ /+/g')

URL="https://api.hh.ru/vacancies?text=${VV}&per_page=20"

curl -s "$URL" | jq '.' > hh.json