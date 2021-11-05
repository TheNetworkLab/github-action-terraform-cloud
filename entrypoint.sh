#!/bin/sh -l

set -e

method="$1"
path="$2"
body="$3"
jq_program="$4"

echo "::add-mask::$TERRAFORM_TOKEN" 

curl --fail-with-body \
    --header "Authorization: Bearer $TERRAFORM_TOKEN" \
    --header "Content-Type: application/vnd.api+json" \
    --data-raw "$body" \
    --request "$method" \
    "https://app.terraform.io/api/v2$path" \
    > response.json

echo "::set-output name=json::$(jq --compact-output "$jq_program" response.json)"
