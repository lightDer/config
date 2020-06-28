#!/usr/bin/env bash
# Bash3 Boilerplate. Copyright (c) 2014, kvz.io

set -o errexit
set -o pipefail
set -o nounset
#set -o xtrace

# retreive current external IP address from Akamai server
MY_IP=$(curl -s http://whatismyip.akamai.com/)

# Gandi livedn API KEY
APIKEY="...APIKEY"

# Static Domain hosted at Gandi
FQDN="0x63.uk"

# Dynamic Subdomain
SUBDOMAIN="wbs"

#Get the current Zone for the provided domain
URI="https://api.gandi.net/v5/livedns/domains/$FQDN/records/$SUBDOMAIN/A"

# Update the A reccord of the Dynamic Subdomain by PUTing on the current zone
curl -X POST \
  -H "Content-Type:application/json" \
  -H "Authorization:Apikey $APIKEY" \
  -d "{\"rrset_values\": [\"$MY_IP\"]}" \
  $URI

