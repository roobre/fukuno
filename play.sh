#!/usr/bin/env bash

set -e

playbook=$1
shift

ansible-playbook -i inventory "playbook-$playbook.yaml" "$@"
