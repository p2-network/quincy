#!/usr/bin/env bash

cd "$(dirname "$0")"/ansible

doppler run -- ansible-vault encrypt_string --vault-id QUINCY@../local/vault-env-client.py "$@"
