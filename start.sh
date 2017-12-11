#!/bin/sh
apk update && apk add --no-cache wget openssl ca-certificates
VERSION=${VERSION:-v0.1.7}
mkdir -p /shared /tmp/download
cd /var/tmp
echo "Install $VERSION/bin/linux/amd64/$i"
wget -q https://github.com/lyft/cni-ipvlan-vpc-k8s/releases/download/$VERSION/cni-ipvlan-vpc-k8s-linux-amd64-$VERSION.tar.gz
tar -xvzf cni-ipvlan-vpc-k8s-linux-amd64-$VERSION.tar.gz
rm cni-ipvlan-vpc-k8s-linux-amd64-$VERSION.tar.gz
cp ./* /shared
rm -rf /tmp/download
