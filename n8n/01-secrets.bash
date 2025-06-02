microk8s kubectl create secret generic n8n-secrets \
  --namespace n8n \
  --from-literal=POSTGRES_DB=n8ndb \
  --from-literal=POSTGRES_USER=n8nuser \
  --from-literal=POSTGRES_PASSWORD=n8npassword \
  --from-literal=N8N_BASIC_AUTH_USER=deinuser \
  --from-literal=N8N_BASIC_AUTH_PASSWORD=deinpasswort \
