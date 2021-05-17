# cloudprojekt

## Container Image bilden

    git clone https://github.com/cntmodul/cloudprojekt
    cd cloudprojekt
    docker build -t cntmodul/cloudprojekt .
    docker push cntmodul/cloudprojekt
    
    
## Applikation starten

    git clone https://github.com/cntmodul/cloudprojekt
    kubectl apply -f cloudprojekt


## Container holen laufen lassen (container image auf github)

    kubectl create deployment cloudprojekt --image=registry.gitlab.com/cntmodul/cloudprojekt/cloudprojekt
    kubectl get all
    kubectl expose deployment/cloudprojekt --port 80 --type="LoadBalancer"
    kubectl get all

## Container holen laufen lassen (container image auf hub.docker.com)

    kubectl create deployment cloudprojekt --image=cntmodul/cloudprojekt
    kubectl get all
    kubectl expose deployment/cloudprojekt --port 80 --type="LoadBalancer"
    kubectl get all
