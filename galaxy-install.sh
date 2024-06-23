#!/usr/bin/env bash

cd "$(dirname "$0")"/ansible

ansible-galaxy install --roles-path `pwd`/roles -r requirements.yml --force