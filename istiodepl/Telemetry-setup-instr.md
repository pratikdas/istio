Set up  INGRESS_HOST and INGRESS_DOMAIN

```shell 
export INGRESS_HOST=$(kubectl -n istio-system get service istio-ingressgateway -o jsonpath='{.status.loadBalancer.ingress[0].ip}')
export INGRESS_DOMAIN=${INGRESS_HOST}.nip.io
```

Create Gateways for the add ons
kubectl apply -f kialigw.yaml

Access with:
Kiali: http://kiali.${INGRESS_DOMAIN}
Prometheus: http://prometheus.${INGRESS_DOMAIN}
Grafana: http://grafana.${INGRESS_DOMAIN}
Tracing: http://tracing.${INGRESS_DOMAIN}