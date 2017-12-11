# Install cni-ipvlan-vpc-k8s

A Alpine based image to install cni-ipvlan-vpc-k8s with. 
The binaries (linux/amd64) are installed in /shared volume which you can mount on host's installation directory.

# Usage Examples

* Basic
```
$ docker run --rm -v /opt/bin/cni-ipvlan-vpc-k8s:/shared c45tr0/install-cni-ipvlan-vpc-k8s
```
* Install specific version
```
$ docker run --env VERSION="v1.4.3" --rm -v /opt/bin/cni-ipvlan-vpc-k8s:/shared c45tr0/install-cni-ipvlan-vpc-k8s
```