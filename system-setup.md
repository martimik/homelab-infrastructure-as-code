# System setup

## Bare metal linux installation on the target machine

OS: Debian headless

### Full disk encryption

It's called a pc (personal computer)

### Sudo user

Username: remote-user

## Network setup

### Static IP

Configure a static ip for the target machine in router settings, so ansible can be reliably deployed.

## Pre-deployment tasks

### Update packages

```bash
sudo apt update & apt upgrade
```

### Install Ansible

```bash
sudo apt install ansible
```
