# System setup

## Bare metal linux installation on the target machine

OS: Debian (12)

### Full disk encryption

It's called pc (personal computer)

### Sudo user

Username: remote-user

## Network setup

### Static IP

Configure a static ip for the target machine if inside local network, so ansible can be reliably deployed.

## Pre-deployment tasks

### Update packages

```bash
sudo apt update & apt upgrade
```

### Install Ansible

```bash
sudo apt install docker docker-compose ansible
```
