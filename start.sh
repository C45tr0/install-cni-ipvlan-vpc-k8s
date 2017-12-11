#!/bin/sh
apk update && apk add --no-cache linux-headers git make gcc
mkdir -p /shared /tmp/download

echo "Grabbing golang/dep"
go get -u github.com/golang/dep/cmd/dep

echo "Grabbing lyft/cni-ipvlan-vpc-k8s"
go get github.com/lyft/cni-ipvlan-vpc-k8s

echo "Making cni-ipvlan-vpc-k8s"
cd $GOPATH/src/github.com/lyft/cni-ipvlan-vpc-k8s
make build

cp cni-ipvlan-vpc-k8s-* /shared
