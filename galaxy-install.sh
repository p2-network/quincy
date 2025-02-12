#!/usr/bin/env bash

cd "$(dirname "$0")"/ansible

ansible-galaxy install -r requirements.yml --force