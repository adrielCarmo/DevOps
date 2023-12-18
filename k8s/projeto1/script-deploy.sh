#!/bin/bash

echo "Criando as imagens..."

docker build -t adrielcarmo/proj-k8s-backend:2.0 backend/.
docker build -t adrielcarmo/proj-k8s-database:2.0 bd/.

echo "Realizando upload das imagens para o HUB..."

docker push adrielcarmo/proj-k8s-backend:2.0
docker push adrielcarmo/proj-k8s-database:2.0

echo "Criando serviços no cluster K8S..."

kubectl apply -f ./services.yml

echo "Realizando os deployments....."

kubectl apply -f ./deploy.yml

echo "Expondo aplicação..."

sleep 30s # aguardar os pods serem criados

ipApp=$(minikube service --url lb-app-php)

echo "Deployment realizado com sucesso! Acesse a aplicação pelo IP:" $ipApp
echo "FIM!"
