# **Provisioning Infrastructure for Self-Hosting Services with Ansible**

## **Easily Deploy & Manage Services in Docker Containers**

This project provides an automated deployment of a scalable infrastructure for self-hosting services on a home server using Docker Containers.  
It simplifies adding new services by leveraging **Traefik** as a reverse proxy, dynamically routing incoming network traffic based on subdomains to the corresponding Docker container. Self-signed SSL certificates are used to ensure secure communication within a local network.
With this setup, services are easily deployed and managed with Docker, providing a flexible and efficient foundation for self-hosting on a home server.

### **Included Services**

- **Traefik** - A reverse proxy to route network traffic to docker containers
- **Portainer** – Manage Docker containers via a web UI
- **Nextcloud** – File sharing and cloud services
- **Gitea** – Self-hosted Git server with a web UI
- **Pi-hole** – DNS server for managing custom domains and ad-blocking
- **Dropbear** – Remote unlocking of server disk encryption

After deployment, the services can be accessed through the following domains (when using home.arpa as the main domain):

- **Traefik:** `traefik.home.arpa`
- **Portainer:** `portainer.home.arpa`
- **Nextcloud:** `next.home.arpa`
- **Gitea:** `gitea.home.arpa`
- **Pi-hole:** `pihole.home.arpa`

## System setup

Read [system setup](system-setup.md) readme for instructions.

## Ansible configuration

### Install ansible galaxy collections to the machine you are using to run the ansible tasks

```
ansible-galaxy collection install docker
```

### Add deployment hosts file

Copy `hosts.template` as `hosts` and update the following line on with the server ip-address

```
server_1         ansible_host=<server-ip-address>
```

### Add deployment variables

Change deployment variables in `/group_vars/homelab.yml` according to your network and system setup.

### Add deployment secrets

Copy `secrets.template.yml` as `secrets.yml` and fill the values.

* `authorized_keys` should contain an array even if there is only one public key that needs to be added.

## Running Ansible tasks

Run all tasks defined in homelab playbook to host defined in hosts file

```bash
./deploy.sh
```

Run a specific role

```bash
./deploy.sh <role>
```

## SSH

After running Ansible tasks you can use ssh to open the server encryption remotely after reboot with
```
ssh root@<dropbear_server_ip>
```

Afterwards you can normally ssh to the server  
```
ssh <remote-user>@<homelab-ip>
```