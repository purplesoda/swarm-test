export VAULT_ADDR="http://localhost:8200"
export VAULT_TOKEN=$(cat /home/vault/.vault-token)
vault login $VAULT_TOKEN

echo "Adding secrets to Vault..."
vault kv put secret/password value=postgres
