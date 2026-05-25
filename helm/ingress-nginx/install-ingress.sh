#!/bin/bash

echo "Adding ingress-nginx Helm repository..."

helm repo add ingress-nginx \
https://kubernetes.github.io/ingress-nginx

helm repo update

echo "Installing ingress-nginx controller..."

helm install ingress-nginx \
ingress-nginx/ingress-nginx \
--namespace ingress-nginx \
--create-namespace

echo "Ingress controller installed successfully."