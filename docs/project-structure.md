# Project Structure

## Overview

The project follows a simple and organized structure suitable for a Cloud and DevOps development environment.

## Directory Structure

```text
cloud-development-environment-initialization/
│
├── docs/
│   ├── installation-guide.md
│   ├── project-structure.md
│   └── troubleshooting.md
│
├── scripts/
│   └── setup-project.sh
│
├── screenshots/
│
├── README.md
│
└── .gitignore
```

## Directory Description

### `docs/`

Contains project documentation.

Files:

* `installation-guide.md` — explains the development environment setup.
* `project-structure.md` — describes the organization of the project.
* `troubleshooting.md` — contains common problems and solutions.

### `scripts/`

Contains Bash automation scripts.

The main script is:

```text
setup-project.sh
```

This script creates the standard project directories and documentation files.

### `screenshots/`

Used to store screenshots that provide evidence of the Linux, Git, SSH, networking, and project configuration steps.

Sensitive information such as passwords, private SSH keys, or credentials must not be stored here.

### `README.md`

The main documentation file for the project. It provides an overview, objectives, tools, project structure, Git workflow, SSH configuration, and Bash automation.

### `.gitignore`

Specifies files and directories that should not be tracked by Git.

It helps prevent sensitive or unnecessary files from being added to the repository.

## Git Repository

The entire project is managed using Git.

The Git metadata is stored in the hidden:

```text
.git/
```

directory.

The project is connected to a GitHub repository using SSH authentication.

## Design Principles

The project structure follows these principles:

1. Keep documentation separate from scripts.
2. Keep automation scripts inside the `scripts` directory.
3. Keep screenshots and evidence organized.
4. Use Git for version control.
5. Avoid committing sensitive information.
6. Keep the project simple and easy to understand.
