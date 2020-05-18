#!/bin/bash

#for j in {17..20}
#do
#  for i in {8000..9000}
#  do
#      frontend=flask-$j
#      echo $frontend
#  
#      cat <<EOF | kubectl apply -f -
#      apiVersion: networking.k8s.io/v1
#      kind: NetworkPolicy
#      metadata:
#        namespace: flask-$j
#        name: access-nginx-flask-$i
#      spec:
#        podSelector:
#          matchLabels:
#            app: flask-$j
#        ingress:
#        - from:
#          - podSelector:
#              matchLabels:
#                app: flask-$j
#          ports:
#          - protocol: TCP
#            port: $i
#EOF
#done
#done
for j in {1..20}
do
  for i in {1..1250}
  do
      frontend=nginx-$j
      echo $frontend
  
      cat <<EOF | kubectl apply -f -
      apiVersion: networking.k8s.io/v1
      kind: NetworkPolicy
      metadata:
        namespace: nginx-$j
        name: access-nginx-flask-$i
      spec:
        podSelector:
          matchLabels:
            app: nginx-$j
        ingress:
        - from:
          - podSelector:
              matchLabels:
                app: nginx-$j
          ports:
          - protocol: TCP
            port: $i
EOF
done
done
