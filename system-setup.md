# System setup

## Bare metal linux installation on the target machine

OS: Debian (current version: 12)

### Full disk encryption

It's called a pc (personal computer)

### Remote user

Username: remote-user

## Network setup

### Static IP

If the machine you’re deploying to is on your local network, give it a fixed IP address so Ansible can always find it reliably.

## Pre-deployment tasks

### Update packages

```bash
sudo apt update & apt upgrade
```

### Install Ansible

```bash
sudo apt install ansible
```
