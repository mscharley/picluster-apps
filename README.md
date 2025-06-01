# ArgoCD deployments

## Purpose

I'm sharing this repository which contains most of the services I am running on my own [home server][ultimate-server] along with the Helm setup for them in order to demonstrate how I've configured Argo CD to manage those services.

I don't recommend using this repository directly yourself, instead use it as inspiration for your own management repository. There are some custom charts in this repository and they are generally not parameterised more than I need to feel comfortable posting them online. Please reach out if you do, I'd love to switch to those new charts.

This is a mirror from my internal gitea server. I've disabled issues on this repo, if there is anything you'd like to ask or report then feel free to reach out on the [home server][ultimate-server] repo instead! If you have some code updates, then feel free to submit a PR however keep in mind that this repo is personalised to what I want and need specifically.

[ultimate-server]: https://github.com/mscharley/ultimate-home-server

## App-of-apps structure

This repository has two different app-of-apps setups:

1. `/infrastructure/apps` - this folder contains apps that define an infrastructure layer for a cluster.
2. `/apps` - this folder contains user-facing apps to run in the cluster.
