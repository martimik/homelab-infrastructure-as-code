# Homelab provisioning with Ansible

## System setup

Read [system setup](system-setup.md) readme for instructions.

## Ansible configuration

### Install ansible galaxy collections on deploying machine

```
ansible-galaxy collection install docker
```


### Add deployment hosts file

Copy `hosts.template` as `hosts` and update the following line on with the server ip-address

```
server_1         ansible_host=<server-ip-address>
```

### Add deployment secrets

Copy `secrets.template.yml` as `secrets.yml` and fill the values.

* Password variables ending in `_hash` need to be in hash format (check below). 
* `authorized_keys` should contain an array even if there is only one public key that needs to be added.

### Generating password hashes 

Some passwords in secrets.yml file are in hash format and passwords hashed need to be generated with

```
./generate-password-hash.sh <username> <password>
```

## Running Ansible tasks

Run all tasks defined in homelab playbook to host defined in hosts file

```bash
./deploy.sh
```

Run specific role to host

```bash
./deploy.sh <role>
```