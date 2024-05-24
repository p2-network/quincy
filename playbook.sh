#!/usr/bin/env bash

cd "$(dirname "$0")"/ansible

doppler run -- ansible-playbook \
  main.yml \
  --vault-id QUINCY@../local/vault-env-client.py \
  "$@"
