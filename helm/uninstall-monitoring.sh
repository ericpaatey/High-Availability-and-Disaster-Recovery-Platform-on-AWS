#!/bin/bash

echo "Removing monitoring stack..."

helm uninstall monitoring -n monitoring

echo "Monitoring stack removed."