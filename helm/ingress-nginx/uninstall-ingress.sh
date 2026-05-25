#!/bin/bash

echo "Removing ingress-nginx controller..."

helm uninstall ingress-nginx -n ingress-nginx

echo "Ingress controller removed."