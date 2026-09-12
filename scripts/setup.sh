#!/bin/bash

echo "Starting Cloud Development Environment setup..."

mkdir -p docs
mkdir -p scripts
mkdir -p screenshots

if [ ! -f README.md ]; then
cat > README.md <<EOF
# Cloud Development Environment Initialization

Cloud and DevOps Internship Task 1

This project provides a standardized Linux-based Cloud and DevOps development environment.
EOF
fi

if [ ! -f .gitignore ]; then
cat > .gitignore <<EOF
*.log
*.tmp
*.pem
id_rsa
id_ed25519
.DS_Store
EOF
fi

touch docs/installation-guide.md
touch docs/project-structure.md
touch docs/troubleshooting.md

chmod +x scripts/setup.sh

if [ ! -d ".git" ]; then
    git init
fi

git add .

if git diff --cached --quiet; then
    echo "No new changes to commit."
else
    git commit -m "Initialize project structure"
fi

echo "Project setup completed successfully."
