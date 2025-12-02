curl -H "Content-Type: application/json" \
  -H "Date: $(date -u +%a,\ %d\ %b\ %Y\ %H:%M:%S\ GMT)" \
  -X POST http://127.0.0.1:3001/participants \
  -d '{
  "name": "greenbankfsp",
  "currency": "USD"
}'
