#!/bin/sh
set -eu

# Put containers on the lab network by default.
COMPOSE_FILE="docker-compose.yml:$(docker-compose-gen network --external lab)"
export COMPOSE_FILE

## Suggestions:
# docker-compose up -d --build
# make test
# dab apps start redis
# envsubst < ./kubernetes.yml | kubectl apply -f -
