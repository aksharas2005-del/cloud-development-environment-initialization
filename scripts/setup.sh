#!/bin/bash

echo "Starting Cloud Development Environment setup..."

PROJECT_NAME="cloud-development-environment-initialization"

mkdir -p "$PROJECT_NAME"
cd "$PROJECT_NAME" || exit 1

mkdir -p docs scripts screenshots

cat > README.md <<EOF
# Cloud Development Environment Initialization

Cloud and DevOps Internship Task 1

This project provides a standardized Linux-based Cloud and DevOps development environment.
EOF

cat > .gitignore <<EOF
*.log
*.tmp
*.pem
id_rsa
id_ed25519
.DS_Store
EOF

touch docs/installation-guide.md
touch docs/project-structure.md
touch docs/troubleshooting.md

chmod +x scripts/setup.sh

if [ ! -d ".git" ]; then
    git init
fi

git add .

git commit -m "Initial project setup"

echo "Project setup completed successfully."
