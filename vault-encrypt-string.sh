#!/usr/bin/env bash

cd "$(dirname "$0")"/ansible

doppler run -- ansible-vault encrypt_string --vault-id quincy@../local/vault-env-client.py "$@"
