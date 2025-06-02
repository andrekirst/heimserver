microk8s kubectl create secret generic n8n-secrets \
  --namespace n8n \
  --from-literal=POSTGRES_PASSWORD='n8npass' \
  --from-literal=POSTGRES_USER='n8n' \
  --from-literal=POSTGRES_DB='n8n' \
  --from-literal=N8N_BASIC_AUTH_USER='admin' \
  --from-literal=N8N_BASIC_AUTH_PASSWORD='geheim'
