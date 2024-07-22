# Address Book

This is a very simple web app for testing observability tools. It can be run
using Docker Compose or Kubernetes.

## Tiers

### app

A Python Flask app with one endpoint that queries a PostgreSQL table and renders
a table of contacts. It uses the `psycopg2` library to connect to the database.

You can use

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
# app config
kubectl create configmap app-config --from-env-file=../../.env
kubectl get configmap app-config -o yaml > app-config.yaml
```

## Building

This repository includes a workflow to build the Python service image
`ghcr.io/address-book`. Pushes to main will build a new image and store it in
your GitHub Container Registry as
`ghcr.io/[github-account]/address-book:latest`. You can also run the workflow
manually to build an image from a branch or tag.

## Running

### Docker Compose

In the deploy/docker directory:

```bash
docker-compose --env-file ../../.env up --build
```

If you want to enable debug mode for the Flask app, set the `FLASK_DEBUG`:

```bash
docker-compose --env-file ../../.env -e FLASK_DEBUG=1 up --build
```

### Kubernetes

In the deploy/kubernetes directory:

```bash
kubectl apply -f .
```
