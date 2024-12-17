#!/bin/bash

# Check if a tag is passed as an argument
if [ "$#" -eq 1 ]; then
    TAG=$1
    echo "Running Ansible playbook with tag: $TAG"
    ansible-playbook playbook.yml -i hosts -v --tags "$TAG"
else
    echo "No tag specified. Running the entire playbook."
    ansible-playbook playbook.yml -i hosts -v
fi