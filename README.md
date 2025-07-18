# DevOps Demo Platform

## Description
This project demonstrates core DevOps skills: automation, CI/CD, infrastructure as code, monitoring, database and message broker management, service mesh, cloud, and security best practices.

### Technologies
- Python (microservice)
- MongoDB, MySQL, Redis, RabbitMQ
- Kubernetes (Helm, Istio, Nginx Ingress)
- GitLab CI/CD
- Prometheus, Thanos, ELK stack
- Terraform
- Bash/Python scripts
- Azure (example configs)

## Quick Start: Step-by-step
1. **Clone the repository:**
   ```bash
   git clone <your-repo-url>
   cd <your-repo-folder>
   ```
2. **Start a local Kubernetes cluster** (for example, with minikube):
   ```bash
   minikube start
   ```
3. **Install Terraform and Helm** (if not installed):
   - [Terraform installation guide](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)
   - [Helm installation guide](https://helm.sh/docs/intro/install/)
4. **Deploy infrastructure:**
   ```bash
   cd infra/terraform
   terraform init
   terraform apply
   # This will deploy MongoDB, MySQL, Redis, RabbitMQ
   ```
5. **Deploy NGINX Ingress Controller:**
   ```bash
   cd ../helm/nginx-ingress
   helm install nginx-ingress .
   ```
6. **(Optional) Deploy monitoring stack:**
   ```bash
   bash scripts/deploy-monitoring.sh
   # This will deploy Prometheus and Grafana
   ```
7. **Check status of all services:**
   ```bash
   bash scripts/check-status.sh
   ```
8. **(Optional) Deploy your Python microservice** (add a Kubernetes manifest or use kubectl to run from src/)
9. **Access Grafana:**
   - Get the NodePort for Grafana:
     ```bash
     kubectl get svc -n monitoring grafana
     ```
   - Open in browser: `http://<minikube-ip>:<nodeport>` (default user: admin, password: admin)
10. **Explore and test!**

## Structure
- `infra/` — Terraform, Helm charts, Kubernetes manifests
- `ci/` — GitLab CI/CD pipeline
- `src/` — Python microservice
- `scripts/` — Bash/Python automation
- `docs/` — Documentation, diagrams, examples

## Contacts
Author: [Your Name]
