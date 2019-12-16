# Istio Client

## Overview

This docker image provides the Istio client istioctl and the Kubernetes client kubectl.
kubectl is used by istioctl when deploying istio like following,

``` shell
istioctl manifest apply -f values.yaml
```

## Image

674851156463.dkr.ecr.eu-central-1.amazonaws.com/deniedboarding/istioctl:1.4.2
