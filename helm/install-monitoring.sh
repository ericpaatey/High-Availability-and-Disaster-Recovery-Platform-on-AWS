#!/bin/bash

echo "Adding Prometheus Helm repository..."

helm repo add prometheus-community \
https://prometheus-community.github.io/helm-charts

helm repo update

echo "Installing kube-prometheus-stack..."

helm install monitoring \
prometheus-community/kube-prometheus-stack \
-f ../../monitoring/prometheus-values.yaml \
--namespace monitoring \
--create-namespace

echo "Monitoring stack installed successfully."