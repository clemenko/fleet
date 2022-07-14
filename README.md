# Using Fleet

Use Fleet to target the local cluster.

There is a bug right now : https://github.com/rancher/fleet/issues/759. Change or remove the `matchLabels` selector.

## kubectl apply

```bash
kubectl  apply -f https://raw.githubusercontent.com/clemenko/fleet/main/gitrepo.yml
```
