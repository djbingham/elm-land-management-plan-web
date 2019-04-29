# Land Management Plan web front end
This is the web front end for the Land Management Plan portion of the ELM service

# Environment variables

| name     | description      | required | default |            valid            | notes |
|----------|------------------|:--------:|---------|:---------------------------:|-------|
| NODE_ENV | Node environment |    no    |         | development,test,production |       |
| PORT     | Port number      |    no    | 3000    |                             |       |

# Running in Kubernetes
To run this application in Kubernetes, first ensure that you have an Ingress Controller running, then apply the `kubernetes/` folder to your cluster:

```
# Start NGINX Ingress Controller
bin/start-ingress-controller

# Deploy app to local cluster
kubectl apply -f kubernetes/
```

For more information about the NGINX Ingress Controller, see: `https://kubernetes.github.io/ingress-nginx/`.

# Prerequisites

Node v8+
