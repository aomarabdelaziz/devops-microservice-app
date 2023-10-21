#!/bin/bash

# helm uninstall adservice
# helm uninstall cartservice 
# helm uninstall checkoutservice
# helm uninstall currencyservice
# helm uninstall emailservice
# helm uninstall frontendservice
# helm uninstall paymentservice 
# helm uninstall productcatalogservice 
# helm uninstall recommendationservice
# helm uninstall shippingservice 

helmfile destroy

kubectl delete --force -f deployments/redis-deployment.yaml
kubectl delete --force -f services/redis-service.yaml
#helm unistall monitoring