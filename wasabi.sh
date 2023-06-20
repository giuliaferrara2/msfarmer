#!/usr/bin/env bash

#set -eEo pipefail

echo "$(date) | INFO  | Configuring wasabi..."
## GOOGLE_SHEETS configuration
echo $(echo ${GOOGLE_SHEETS_CREDENTIALS_B64} | base64 --decode) > google_sheets_credentials.json
echo $(echo ${GOOGLE_SHEETS_TOKEN_B64} | base64 --decode) > google_sheets_token.json

echo '[{ "username": '${USER}', "password": '${PASS}' }]' > accounts.json

echo "$(date) | INFO  | Starting wasabi"      
python ms_rewards_farmer.py \
    --headless \
    --dont-check-for-updates \
    --no-images \
    --superfast \
    --google-sheet google_sheets_credentials.json google_sheets_token.json ${GOOGLE_SHEETS_SHEET_ID} ${GOOGLE_SHEETS_TAB_NAME}
