# argocd-blog

## ArgoCD Beyond the Basics

## Run this locally
To run this locally you only need to install [devbox](https://github.com/jetify-com/devbox). Devbox is a tool that ensures a consistent developer environment. Devbox will ensure that in your local environment you will have the following tools:
- `Kubectl`: Kubernetes command line
- `Kind`: Kubernetes locally using Docker

1) Install dependencies

```sh
devbox shell
```

2) Create infrastructure

```sh
devbox run create
```

This will create the local Kubernetes cluster using Kind and install ArgoCD in the local cluster.

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