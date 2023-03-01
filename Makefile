SHELL := /bin/bash

.PHONY: ansible
ansible: ansible-install vault-password

.PHONY: ansible-install
ansible-install:
	pip install -U pip
	pip install -r requirements.txt
	ansible-galaxy install -r roles.yml

vault-password:
	$(error Password to the Ansible Vault not provided: ./vault-password missing)
