setup:
	ansible-galaxy install -r requirements.yml
	ansible-playbook -i inventory.ini playbook.yml --tags "setup" --vault-password-file .vault_pass

deploy:
	ansible-playbook -i inventory.ini playbook.yml --tags "deploy" --vault-password-file .vault_pass

monitor:
	ansible-playbook -i inventory.ini playbook.yml --tags "monitor" --vault-password-file .vault_pass

vault-edit:
	ansible-vault edit group_vars/webservers/vault.yml
