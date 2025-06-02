microk8s kubectl create secret generic n8n-secrets \
  --from-literal=N8N_BASIC_AUTH_USER=deinuser \
  --from-literal=N8N_BASIC_AUTH_PASSWORD=deinpasswort \
  -n n8n
