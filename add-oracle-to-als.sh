curl -H "Content-Type: application/json" \
  -H "Date: $(date -u +%a,\ %d\ %b\ %Y\ %H:%M:%S\ GMT)" \
  -X POST http://127.0.0.1:4001/oracles \
  -d '{
  "oracleIdType": "ALIAS",
  "endpoint": {
    "value": "http://registry-oracle:6666",
    "endpointType": "URL"
  },
  "currency": "USD",
  "isDefault": true
}'
