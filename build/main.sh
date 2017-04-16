#!/usr/bin/env bash
sudo su



if [ -f /root/.profile ]; then
	rm /root/.profile
fi


apt-get update

PLAYBOOK="/usr/bin/ansible-playbook"
GALAXY="/usr/bin/ansible-galaxy"

export PYTHONUNBUFFERED=1
export ANSIBLE_FORCE_COLOR=1

if [ ! -f "${PLAYBOOK}" ]; then
	echo "Installing Ansible..."
	apt-get -qq -y install ansible > /dev/null 2>&1
fi

echo "Installing required roles..."
${GALAXY} \
	install --force \
	-r "${PROJECT_ROOT}/build/ansible/requirements.yml"