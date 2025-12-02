curl -X GET "http://127.0.0.1:3001/participants/Hub/accounts" \
  -H "Accept: application/json"

curl -X POST "http://127.0.0.1:3001/participants/Hub/accounts" \
  -H "Content-Type: application/json" \
  -d '{
    "type": "HUB_RECONCILIATION",
    "currency": "USD"
  }'


curl -X POST "http://127.0.0.1:3001/participants/Hub/accounts" \
  -H "Content-Type: application/json" \
  -d '{
    "type": "HUB_MULTILATERAL_SETTLEMENT",
    "currency": "USD"
  }'

curl -X POST "http://127.0.0.1:3001/participants/Hub/accounts" \
  -H "Content-Type: application/json" \
  -d '{
    "type": "HUB_FEE",
    "currency": "USD"
  }'


# POSITION – participant position account
curl -X POST "http://127.0.0.1:3001/ledgerAccountTypes" \
  -H "Content-Type: application/json" \
  -d '{
    "name": "POSITION",
    "description": "Participant position account",
    "isActive": true,
    "isSettleable": true
  }'

# SETTLEMENT – participant settlement account
curl -X POST "http://127.0.0.1:3001/ledgerAccountTypes" \
  -H "Content-Type: application/json" \
  -d '{
    "name": "SETTLEMENT",
    "description": "Participant settlement account",
    "isActive": true,
    "isSettleable": true
  }'

# INTERCHANGE_FEE – fee account
curl -X POST "http://127.0.0.1:3001/ledgerAccountTypes" \
  -H "Content-Type: application/json" \
  -d '{
    "name": "INTERCHANGE_FEE",
    "description": "Interchange fee account",
    "isActive": true,
    "isSettleable": true
  }'

# HUB_RECONCILIATION – hub recon account
curl -X POST "http://127.0.0.1:3001/ledgerAccountTypes" \
  -H "Content-Type: application/json" \
  -d '{
    "name": "HUB_RECONCILIATION",
    "description": "Hub reconciliation account",
    "isActive": true,
    "isSettleable": true
  }'

# HUB_MULTILATERAL_SETTLEMENT – hub multilateral settlement account
curl -X POST "http://127.0.0.1:3001/ledgerAccountTypes" \
  -H "Content-Type: application/json" \
  -d '{
    "name": "HUB_MULTILATERAL_SETTLEMENT",
    "description": "Hub multilateral settlement account",
    "isActive": true,
    "isSettleable": true
  }'

# HUB_FEE – hub fee account
curl -X POST "http://127.0.0.1:3001/ledgerAccountTypes" \
  -H "Content-Type: application/json" \
  -d '{
    "name": "HUB_FEE",
    "description": "Hub fee account",
    "isActive": true,
    "isSettleable": true
  }'


curl -X POST "http://127.0.0.1:3001/settlementModels" \
  -H "Content-Type: application/json" \
  -d '{
    "name": "DEFERREDNET",
    "settlementGranularity": "NET",
    "settlementInterchange": "MULTILATERAL",
    "settlementDelay": "DEFERRED",
    "currency": "USD",
    "requireLiquidityCheck": true,
    "ledgerAccountType": "POSITION",
    "settlementAccountType": "SETTLEMENT",
    "autoPositionReset": true
  }'


# Hub reconciliation account – REQUIRED before any DFSPs
curl -X POST "http://127.0.0.1:3001/participants/Hub/accounts" \
  -H "Content-Type: application/json" \
  -d '{
    "type": "HUB_RECONCILIATION",
    "currency": "USD"
  }'

# Hub multilateral settlement account – used by DEFERRED NET
curl -X POST "http://127.0.0.1:3001/participants/Hub/accounts" \
  -H "Content-Type: application/json" \
  -d '{
    "type": "HUB_MULTILATERAL_SETTLEMENT",
    "currency": "USD"
  }'

# Hub fee account (optional but usually configured)
curl -X POST "http://127.0.0.1:3001/participants/Hub/accounts" \
  -H "Content-Type: application/json" \
  -d '{
    "type": "HUB_FEE",
    "currency": "USD"
  }'

