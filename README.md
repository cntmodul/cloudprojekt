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


## Container image aufbereiten - wenn keine YAML Datei vorhanden ist nur Image

    kubectl delete deployment cloudprojekt
    kubectl delete service cloudprojekt
    kubectl delete ingress cloudprojekt
    kubectl create deployment cloudprojekt --image=cntmodul/cloudprojekt
    kubectl apply -f https://raw.githubusercontent.com/cntmodul/cloudprojekt/main/cloudprojekt-ingress.yaml
    kubectl get all
    
 ## Container image aufbereiten - wenn YAML Datei vorhanden

    kubectl delete deployment cloudprojekt
    kubectl delete service cloudprojekt
    kubectl delete ingress cloudprojekt
    git clone https://github.com/cntmodul/cloudprojekt
    kubectl apply -f cloudprojekt
    ## Alles anzeigen inkl ingress
    kubectl get all,ingress
    
