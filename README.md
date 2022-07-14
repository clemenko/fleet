# Using Fleet

Use Fleet to target the local cluster.

There is a bug right now : https://github.com/rancher/fleet/issues/759. Change or remove the `matchLabels` selector.

fix : `kubectl patch ClusterGroup -n fleet-local default --type=json -p='[{"op": "remove", "path": "/spec/selector/matchLabels/name"}]'`

## kubectl apply

```bash
kubectl  apply -f https://raw.githubusercontent.com/clemenko/fleet/main/gitrepo.yml
```

## More examples

https://github.com/rancher/fleet-examples

## Docs

https://fleet.rancher.io/
