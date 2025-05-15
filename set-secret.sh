#! /bin/bash

while IFS='=' read -r key value
do
  gh secret set "$key" --body "$value"
done < .env
