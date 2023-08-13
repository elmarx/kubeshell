# Kubeshell

An Arch-Linux-based image to be used in interactive kubernetes shells.

## Usage

```shell
kubectl run my-shell --rm -i --tty --image elmarx/kubeshell -- bash

# or, run on a specific node
kubectl run my-shell --rm -i --tty --image elmarx/kubeshell --overrides='{"spec": { "nodeSelector": {"kubernetes.io/hostname": "my-node"}}}' -- bash
```

## Install missing packages

```shell
paru package-name
```
