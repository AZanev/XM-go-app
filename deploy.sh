#given that the Dockerfile is in the current working directory we build with:
docker build -t gotest .

#in order to be able to push to the registry we need authorize by executing : docker login (ssh is also an option)
docker tag gotest:latest angelzanev/gotest:v1.0
docker push angelzanev/gotest:v1.0 

#given that minikube, kubectl and helm are installed on the machine 
minikube start

helm install api helm/api-chart -n myns --create-namespace

pause
