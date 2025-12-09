# Automated WordPress Deployment with Docker and GitHub Actions

This project provides an automated WordPress deployment workflow using Docker and GitHub Actions.  
The pipeline builds and deploys the WordPress environment whenever changes are pushed to the repository, ensuring consistency across development machines and deployment environments.

---

## Features

- WordPress container deployed using Docker
- Database container included (MySQL / MariaDB)
- CI/CD pipeline triggered on GitHub push
- Reproducible environment setup
- Quick start for local development

---

## Prerequisites

- Docker
- Docker Compose
- GitHub Actions enabled for the repository
- (If deploying remotely) configure GitHub Secrets for credentials

## How It Works

1. Code is pushed to the main branch.
2. GitHub Actions pulls the latest code and runs the workflow.
3. Docker builds and deploys the WordPress and database containers.
4. Containers are started with the configuration defined in the project.

---

## Folder Structure
.github/workflows/     # GitHub Actions pipeline
Dockerfile             # WordPress container build instructions
docker-compose.yml     # Container orchestration for WP + DB


## Local Setup

Clone the repository:

```bash
git clone https://github.com/AyaMZ28/CI.git
cd CI

Start the environment:

docker-compose up -d --build


Access the site:

http://localhost:8000


(Port may vary depending on configuration.)
