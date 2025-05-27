# Doings

`microk8s helm repo add bitnami https://charts.bitnami.com/bitnami`
`microk8s helm repo update`

## === PostgreSQL HA Deployment ===

Erstellt ein PostgreSQL HA Cluster mit PgPool & Replikation

```bash
microk8s helm install paperless-postgres bitnami/postgresql-ha \
   --set postgresql.password=supergeheim123 \
   --set postgresql.database=paperless \
   --set postgresql.username=paperless \
   --set persistence.size=10Gi
```

## === Redis HA Deployment ===

```bash
microk8s helm install paperless-redis bitnami/redis \
  --set architecture=replication \
  --set auth.enabled=false \
  --set replica.replicaCount=2 \
  --set master.persistence.size=2Gi \
  --set replica.persistence.size=2Gi
```

`microk8s helm install paperless-postgres bitnami/postgresql-ha --set postgresql.password=<pg-password> --set postgresql.database=paperless --set postgresql.username=paperless --set persistence.size=10Gi`

`microk8s helm install paperless-redis bitnami/redis --set architecture=replication --set auth.enabled=false --set replica.replicaCount=2 --set master.persistence.size=2Gi --set replica.persistence.size=2Gi`
