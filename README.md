# Install cni-ipvlan-vpc-k8s

A Golang/Alpine based image to install cni-ipvlan-vpc-k8s with. 
The binaries (linux/amd64) are installed in /shared volume which you can mount on host's installation directory.

# Usage Examples

```
$ docker run --rm -v /opt/bin/cni-ipvlan-vpc-k8s:/shared c45tr0/install-cni-ipvlan-vpc-k8s
```
