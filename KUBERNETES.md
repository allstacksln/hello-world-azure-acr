# Kubernetes Helper Commands

### Authenticate with AKS
```
az login
az aks get-credentials --name <cluster_name> --resource-group cdc-coe-<your_name>
kubectl apply -f hello.yml
```

# Get service load balancer details
```
kubectl get svc
```
