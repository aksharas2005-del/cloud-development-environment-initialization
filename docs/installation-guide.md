# Installation Guide

## 1. Operating System

The development environment was configured using Ubuntu Linux in a virtual machine.

Ubuntu provides the Linux environment used for the Cloud and DevOps internship activities.

## 2. Update the System

The package lists were updated and available system packages were upgraded using:

```bash
sudo apt update
sudo apt upgrade -y
```

## 3. Install Essential Tools

The following DevOps and networking utilities were installed:

```bash
sudo apt install -y git curl wget openssh-client traceroute net-tools dnsutils
```

## 4. Verify Installed Tools

Git was verified using:

```bash
git --version
```

SSH was verified using:

```bash
ssh -V
```

curl was verified using:

```bash
curl --version
```

## 5. Git Configuration

Git was configured with the user's name and GitHub email:

```bash
git config --global user.name "Your Name"
git config --global user.email "your-email@example.com"
```

The configuration can be checked with:

```bash
git config --global --list
```

## 6. SSH Configuration

An Ed25519 SSH key was generated using:

```bash
ssh-keygen -t ed25519 -C "your-email@example.com"
```

The SSH agent was started using:

```bash
eval "$(ssh-agent -s)"
```

The SSH key was added using:

```bash
ssh-add ~/.ssh/id_ed25519
```

The public key was displayed using:

```bash
cat ~/.ssh/id_ed25519.pub
```

The public key was added to the GitHub account under SSH and GPG keys.

The GitHub connection was tested using:

```bash
ssh -T git@github.com
```

## 7. Project Initialization

The project directory was created using:

```bash
mkdir cloud-development-environment-initialization
cd cloud-development-environment-initialization
```

Git was initialized using:

```bash
git init
```

## 8. Project Structure

The following directories were created:

```text
docs/
scripts/
screenshots/
```

The main project files include:

```text
README.md
.gitignore
```

Documentation files are stored inside the `docs` directory.

The Bash automation script is stored inside the `scripts` directory.

## 9. Bash Script

The project includes:

```text
scripts/setup-project.sh
```

The script is made executable using:

```bash
chmod +x scripts/setup-project.sh
```

It can be executed using:

```bash
./scripts/setup-project.sh
```

## 10. GitHub Connection

The local Git repository was connected to GitHub using an SSH remote:

```bash
git remote add origin git@github.com:YOUR-USERNAME/cloud-development-environment-initialization.git
```

The remote connection can be checked with:

```bash
git remote -v
```

## 11. Git Workflow

The basic Git workflow used for the project is:

```bash
git add .
git commit -m "Commit message"
git push
```

This allows changes made locally in Ubuntu to be stored in the GitHub repository.

## 12. Security Notes

* SSH private keys must never be shared.
* Credentials and sensitive information must not be committed to Git.
* The `.gitignore` file is used to prevent sensitive or unnecessary files from being tracked.
* Everyday Linux activities should not be performed as the root user.
