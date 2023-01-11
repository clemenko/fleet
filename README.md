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


### Snippet

```bash
function refresh_gitrepos() {
  for gitrepo in $(k get gitrepo --no-headers -n fleet-default | awk '{ print $1 }'); gen=$(k get gitrepo -n fleet-default $gitrepo -o json | jq -r '.spec.forceSyncGeneration'); k patch -n fleet-default gitrepo "$gitrepo" --type merge -p "{\"spec\": {\"forceSyncGeneration\": $((gen+1))}}"; done
}
```