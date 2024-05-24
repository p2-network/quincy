#!/usr/bin/env bash

cd "$(dirname "$0")"/ansible

doppler run -- ansible-playbook \
  main.yml \
  --vault-id quincy@../local/vault-env-client.py \
  "$@"
