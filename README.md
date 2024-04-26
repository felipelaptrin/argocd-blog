# ArgoCD Beyond the Basics

This repository contains practical examples of my blog post called [ArgoCD beyond the basics](https://felipetrindade.com/argocd-beyond-basics/).

## Run this locally
To run this locally you only need to install [devbox](https://github.com/jetify-com/devbox). Devbox is a tool that ensures a consistent developer environment. Devbox will ensure that in your local environment, you will have the following tools:
- `Kubectl`: Kubernetes command line
- `Kind`: Kubernetes locally using Docker
- `yq`: Easily manage YAML manifests

1) Install dependencies

```sh
devbox shell
```

2) Create infrastructure

```sh
devbox run create
```

This will create two local Kubernetes clusters using Kind and install ArgoCD in the local cluster. The cluster called `prod` is the cluster that ArgoCD will be installed and the `dev` cluster is the external cluster.

3) Connect to the ArgoCD

```sh
devbox run connect
```

And follow the instructions to connect to the ArgoCD UI.

4) Delete it all when done!

```sh
devbox run destroy
```

To delete the local Kubernetes cluster.

## Run the experiments

### App of Apps

```sh
devbox run app-of-apps
```


This will create the app of apps pattern.

### Multi-Cluster

```sh
devbox run multi-cluster
```

It creates all the Kubernetes resources that allows ArgoCD to deploy to an external cluster (dev cluster).

### ApplicationSet

```sh
devbox run applicationset
```

### Hooks and sync wave

When you run the app of apps command (`devbox run app-of-apps`) it automatically creates the example of an application using hooks and sync waves. Notice that this application does not have auto sync, so you can go sync manually on the ArgoCD UI and check the behavior.