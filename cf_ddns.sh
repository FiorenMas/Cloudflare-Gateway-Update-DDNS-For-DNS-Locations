#!/bin/bash

#Get DDNS IP Address
cidr="$(dig $DDNS_HOSTNAME +short)/32"

#Hide sensitivity output logs
echo "::add-mask::$cidr"
echo "::add-mask::$CLOUDFLARE_ACCOUNT_ID"

#Call Cloudflare API
curl --request PUT \
  --url https://api.cloudflare.com/client/v4/accounts/$CLOUDFLARE_ACCOUNT_ID/gateway/locations/$CLOUDFLARE_LOCATION_ID \
  --header 'Content-Type: application/json' \
  --header "X-Auth-Email: $CLOUDFLARE_ACCOUNT_EMAIL" \
  --header "X-Auth-Key: $CLOUDFLARE_API_KEY" \
  --data "{
  \"name\": \"$CLOUDFLARE_LOCATION_NAME\",
  \"client_default\": true,
  \"networks\": [
	{\"network\": \"$cidr\"}
  ]
}"