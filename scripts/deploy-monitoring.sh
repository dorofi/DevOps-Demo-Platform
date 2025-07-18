#!/bin/bash
# Simple script to deploy Prometheus and Grafana using Helm

set -e

echo "Adding Helm repo for Prometheus and Grafana..."
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo add grafana https://grafana.github.io/helm-charts
helm repo update

echo "Installing Prometheus..."
helm install prometheus prometheus-community/prometheus --namespace monitoring --create-namespace

echo "Installing Grafana..."
helm install grafana grafana/grafana --namespace monitoring --set adminPassword=admin --set service.type=NodePort

echo "Done!"
echo "Access Grafana via NodePort. Default user: admin, password: admin."
