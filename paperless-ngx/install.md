# Doings

`microk8s helm repo add bitnami https://charts.bitnami.com/bitnami`
`microk8s helm repo update`

## === PostgreSQL HA Deployment ===

Erstellt ein PostgreSQL HA Cluster mit PgPool & Replikation

`microk8s kubectl apply -f paperless-namespace.yaml`

```bash
microk8s helm install paperless-postgres bitnami/postgresql-ha \
  --namespace paperless \
  --set postgresql.password=<db-password> \
  --set postgresql.database=paperless \
  --set postgresql.username=paperless \
  --set persistence.size=100Gi
```

```bash
microk8s helm install paperless-redis bitnami/redis \
  --namespace paperless \
  --set architecture=replication \
  --set auth.enabled=false \
  --set replica.replicaCount=2 \
  --set master.persistence.size=20Gi \
  --set replica.persistence.size=20Gi
```

Secrets ausrollen

WARNING: Password must be set

`microk8s kubectl apply -f paperless-secret.yaml`

Persistant Volume Claims ausrollen

`microk8s kubectl apply -f paperless-pvc.yaml`

Deployment für Paperless ausrollenn

`microk8s kubectl apply -f paperless-deployment.yaml`

Load Balancer für Paperless ausrollenn

`microk8s kubectl apply -f paperless-loadbalancer.yaml`

Backup job für Paperless ausrollenn

`microk8s kubectl apply -f paperless-backup-job.yaml`
