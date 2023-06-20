### #3 - Kubernetes

### Pre-requistes
kubectl - this will come preinstalled when you install docker for desktop and enable the kubernetes cluster
- https://docs.docker.com/desktop/kubernetes/

### Resources
What is kubernetes - https://www.youtube.com/watch?v=VnvRFRk_51k
kubectl cheatsheet - https://kubernetes.io/docs/reference/kubectl/cheatsheet/

**Tutorial**

1. Complete the Kubernetes hello world tutorial
- https://kubernetes.io/docs/tutorials/kubernetes-basics/
- we'll be using our docker desktop Kubernetes cluster instead of minikube and other alternatives

**Local Kubernetes Cluster**

2. Using your local Kubernetes cluster deploy the hello world application to the cluster using your DockerHub Registry.
   - Use Kubernetes deployment template (https://kubernetes.io/docs/concepts/workloads/controllers/deployment/)

3. Get access to your deployed application using the kubernetes `Service` template
   - https://kubernetes.io/docs/concepts/services-networking/service/

Outcome - You should be able to access your hello-world application from your local IP address

** AWS Kubernetes Cluster **
We will ignore the AWS version of this tutorial as EKS clusters are expensive. The local cluster should suffice

**Azure Kubernetes Cluster**

4. Create an AKS cluster via Terraform
- use the cheapest VM type

5. Ensure you can Authenticate with your AKS cluster and run `kubectl` commands against it

6. Deploy the hello world application to the cluster using your Azure Registry to AKS
   - Use Kubernetes deployment template

7. Get access to your deployed application using the kubernetes `Service` template

8. Outcome - You should be able to access your hello-world application from the public IP address

