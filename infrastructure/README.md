# Infrastructure

This folder has an app of apps folder in `/apps` with each individual app getting it's own folder.

## Kubernetes core

### Flannel

This will configure flannel for use as the network plugin for Kubernetes.

## Storage

### NFS

NFS has support for use as a storage class, which means it can be dynamically created to service any PVC request.

### iSCSI

iSCSI support is baked into Kubernetes, but it doesn't support being used as a storage class. This means you must preprovision the block devices and format them before use. You can preprovision a named block of devices and use them like a storage class.

Personally, I only use iSCSI for postgresql databases, with the operator configured to backup the instances to an NFS-backed storage target. This means I don't need to worry about backups for the iSCSI devices themselves, which can be troublesome. For a Raspberry Pi running over a 1Gb/s link, the difference in performance is negligible but databases do gain benefits from having stricter control over files on disk.

## Networking

### Tailscale operator

Allows for exposing services from Kubernetes directly over Tailscale for simple remote access.

### MetalLB

MetalLB is included for exposing services on dedicated IP addresses to the local network of the cluster.

### Traefik

A more advanced full Ingress option for exposing HTTP services on the local network of the cluster. Traefik is exposed on the local network using MetalLB under the hood.
