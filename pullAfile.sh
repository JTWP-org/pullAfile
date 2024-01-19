#!/bin/bash

source cfg.cfg



curl -o "$DESTINATION" "$URL"


if [ "$WEBHOOK_ENABLED" = True ]; then
    CURRENT_TIME=$(date +"%m/%d/%Y %T")
    WEBHOOK_DATA='{
      "embeds": [{
        "title": "JSON Loaded",
        "description": "The JSON file has been loaded on '"$CURRENT_TIME"'"
      }]
    }'
    curl -X POST -H "Content-Type: application/json" -d "$WEBHOOK_DATA" "$WEBHOOK_URL"
    curl -X POST -H "Content-Type: multipart/form-data" -F "file=@$DESTINATION" "$WEBHOOK_URL"
fi
