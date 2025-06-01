# Infrastructure

This folder has an app of apps folder in `/apps` with each individual app getting it's own folder.

## Kubernetes core

### Flannel

This will configure flannel for use as the network plugin for Kubernetes.

## Storage

### NFS

NFS has support for use as a storage class, which means it can be dynamically created to service any PVC request.

### iSCSI

\[TBC].

## Networking

### Tailscale operator

Allows for exposing services from Kubernetes directly over Tailscale for simple remote access.

### MetalLB

MetalLB is included for exposing services on dedicated IP addresses to the local network of the cluster.
