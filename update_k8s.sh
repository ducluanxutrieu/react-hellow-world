#/bin/bash

aws eks update-kubeconfig --name helloworld
# Run kubernetes apply deployment
kubectl apply -f kubernetes/helloworld-deploy.yaml
# Run kubernetes service
kubectl apply -f kubernetes/helloworld-service.yaml

kubectl get all
kubectl rollout status deployment/helloworld-deploy