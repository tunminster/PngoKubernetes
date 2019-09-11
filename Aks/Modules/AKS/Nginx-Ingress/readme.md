Nginx Ingress for AKS https://kubernetes.github.io/ingress-nginx/deploy/

1. install kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/master/deploy/static/mandatory.yaml

2. For Azure,  kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/master/deploy/static/provider/cloud-generic.yaml


The above latest ingress yaml files are used at this time deployment of Nginx ingress. Remommend to check Nginx website for time to time to get latest deployment of ingress. 