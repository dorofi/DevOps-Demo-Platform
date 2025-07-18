#!/bin/bash
# Simple script to check status of all demo platform services in Kubernetes

set -e

echo "Checking status of MongoDB, MySQL, Redis, RabbitMQ, and NGINX Ingress..."
kubectl get pods -l app=mongodb
kubectl get pods -l app=mysql
kubectl get pods -l app=redis
kubectl get pods -l app=rabbitmq
kubectl get pods -l app=nginx-ingress

echo "\nService endpoints:"
kubectl get svc mongodb mysql redis rabbitmq nginx-ingress || true
