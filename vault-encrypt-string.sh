#!/usr/bin/env bash

cd "$(dirname "$0")"/ansible

export VAULT_PASSWORD_QUINCY=$(env AWS_PROFILE=thepatrick-prod aws ssm get-parameters --names /homelab/quincy/vault --with-decryption --query Parameters[].Value --output text)

ansible-vault encrypt_string --vault-id QUINCY@../local/vault-env-client.py "$@"
