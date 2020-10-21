# centos-netools

CentOS based Image that contains network debugging tools, and example pods with the image

## Dockerfile

Dockerfile: the image used by pod, taking centos 8 as a base image.

Dockerfile.centos7: deprecated, taking centos 7 as a base image.

## Examples of pod configuration file

centos-pod.json: basic pod configuration file, using the image built from centos 8.

centos-pod-with-nodename.yaml: before applying the configuration file, please update the `nodeName:` and specify a node that the pod will be landed.

centos-pod-with-dnsconfig.yaml: adding `dnsConfig` to update the options in pod's `/etc/resolv.conf`.

## For RHCOS toolbox

for more information please see https://github.com/coreos/toolbox

Dockerfile.debug: to build the custom image that can be used in toolbox (RHCOS debugging purpose)

example.toolboxrc: the `.toolboxrc` if using the custom image above.

