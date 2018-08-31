#!/usr/bin/env bash

# set the public ip
export KUBERNETES_PUBLIC_IP=${1:-172.30.0.11}

# start rti shapes demo
exec rtishapesdemo -workspaceFile KUBERNETES_WORKSPACE.xml |& logger --tag rtishapesdemo &
