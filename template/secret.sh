#!/usr/bin/env bash
set -e

kubectl create secret -n cattle-global-data generic amazonec2credential --from-literal=amazonec2credentialConfig-defaultRegion=us-east-1 --from-literal=amazonec2credentialConfig-accessKey=AKIA3VK5ASGVIE6SLDWF --from-literal=amazonec2credentialConfig-secretKey=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

helm upgrade -i aws cluster-templates/rancher-cluster-templates -n fleet-default -f values-aws.yaml


