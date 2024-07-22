# Address Book

This is a very simple web app for testing observability tools. It can be run
using Docker Compose or Kubernetes.

## Tiers

### app

A Python Flask app with one endpoint that queries a PostgreSQL table and renders
a table of contacts. It uses the `psycopg2` library to connect to the database.

### postgres

A PostgreSQL database with a table called `addresses` that has a couple
dozen rows of fake data.

### nginx

An Nginx server that proxies requests to the Flask app.

## Configuration

Copy the `env-example` file to `.env` and set the values to match your
environment.

For Kubernetes, you can create ConfigMaps and Secrets from `nginx/nginx.conf`
and `.env`. In the `deploy/kubernetes` directory:

```bash
kubectl create configmap app-config --from-env-file=../../.env
```

## Running

### Docker Compose

In the deploy/docker directory:

```bash
docker-compose --env-file ../../env up --build
```

### Kubernetes

In the deploy/kubernetes directory:

```bash
kubectl apply -f .
```
