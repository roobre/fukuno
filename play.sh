#!/usr/bin/env bash

set -e

# Mitogen 0.3.3 is not compatible with ansible 2.16.x
# export ANSIBLE_STRATEGY_PLUGINS="$(pip show mitogen | grep -E '^Location: ' | sed -e 's/^Location: \(.*\)/\1/')/ansible_mitogen/plugins/strategy/"

playbook=$1
shift

ansible-playbook -i inventory "playbook-$playbook.yaml" "$@"
