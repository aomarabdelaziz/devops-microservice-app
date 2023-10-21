#!/bin/bash

# helm install -f values/ad-service.values.yaml adservice charts/microservice
# helm install -f values/cart-service-values.yaml cartservice charts/microservice
# helm install -f values/checkout-service-values.yaml checkoutservice charts/microservice
# helm install -f values/currency-service-values.yaml currencyservice charts/microservice
# helm install -f values/email-service-values.yaml emailservice charts/microservice
# helm install -f values/frontend-service-values.yaml frontendservice charts/microservice
# helm install -f values/payment-service-values.yaml paymentservice charts/microservice
# helm install -f values/product-catalog-service-values.yaml productcatalogservice charts/microservice
# helm install -f values/recommendation-service-values.yaml recommendationservice charts/microservice
# helm install -f values/shipping-service-values.yaml shippingservice charts/microservice

helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
#helm install monitoring prometheus-community/kube-prometheus-stack -n monitoring 

helmfile sync

kubectl apply -f deployments/redis-deployment.yaml
kubectl apply -f services/redis-service.yaml

