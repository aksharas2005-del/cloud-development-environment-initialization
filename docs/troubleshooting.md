# Troubleshooting Notes

## 1. Git Command Not Found

### Problem

The terminal displays an error such as:

```text
git: command not found
```

### Solution

Install Git using:

```bash
sudo apt update
sudo apt install git -y
```

Verify the installation:

```bash
git --version
```

---

## 2. SSH Connection to GitHub Fails

### Problem

The command:

```bash
ssh -T git@github.com
```

does not authenticate successfully.

### Solution

Check whether the SSH key exists:

```bash
ls -la ~/.ssh/
```

Start the SSH agent:

```bash
eval "$(ssh-agent -s)"
```

Add the key:

```bash
ssh-add ~/.ssh/id_ed25519
```

Make sure the public key has been added to the GitHub account.

---

## 3. Permission Denied When Running the Bash Script

### Problem

Running:

```bash
./scripts/setup-project.sh
```

produces a permission error.

### Solution

Make the script executable:

```bash
chmod +x scripts/setup-project.sh
```

Then run:

```bash
./scripts/setup-project.sh
```

---

## 4. Git Push Fails

### Problem

The project cannot be pushed to GitHub.

### Solution

Check the configured remote:

```bash
git remote -v
```

If necessary, configure the GitHub remote:

```bash
git remote add origin git@github.com:YOUR-USERNAME/cloud-development-environment-initialization.git
```

Check the SSH connection:

```bash
ssh -T git@github.com
```

Then try:

```bash
git push -u origin main
```

---

## 5. Network Connectivity Problem

### Problem

Internet connectivity is not working correctly.

### Solution

Check the network configuration:

```bash
ip addr
```

Test connectivity:

```bash
ping -c 4 google.com
```

Test DNS resolution:

```bash
nslookup google.com
```

Test HTTP connectivity:

```bash
curl https://example.com
```

---

## 6. Check Git Status

When unsure about the current Git state, use:

```bash
git status
```

This shows which files are modified, untracked, or ready to be committed.

---

## 7. General Best Practices

* Read error messages carefully before trying another command.
* Use `git status` frequently.
* Do not share private SSH keys.
* Do not commit passwords, credentials, or other sensitive information.
* Use meaningful Git commit messages.
* Use `sudo` only when administrative privileges are required.
