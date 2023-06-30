echo "Build Docker Imagem"
docker build -t ylmenezes/db-mensagem:1.1 database/.
docker build -t ylmenezes/back-mensagem:1.1 backend/.

echo "Push Docker Imagem"
docker push ylmenezes/db-mensagem:1.1
docker push ylmenezes/back-mensagem:1.1

echo "Excluindo Servico e Deployment"
kubectl delete -f ./deployment.yml
kubectl delete -f ./service.yml

echo "Criando Servicos"
kubectl apply -f ./service.yml

echo "Criando Deployment"
kubectl apply -f ./deployment.yml
