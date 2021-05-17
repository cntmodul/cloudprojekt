# cloudprojekt

## Container Image bilden

    git clone https://github.com/cntmodul/cloudprojekt
    cd cloudprojekt
    docker build -t cntmodul/cloudprojekt .
    docker push cntmodul/cloudprojekt
    
    
## Applikation starten

    git clone https://github.com/cntmodul/cloudprojekt
    kubectl apply -f cloudprojekt


## Container holen laufen lassen

    kubectl create deployment cloudprojekt --image=registry.gitlab.com/cntmodul/cloudprojekt
    kubectl get all
